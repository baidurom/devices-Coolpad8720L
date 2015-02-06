.class Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;
.super Ljava/lang/Object;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 4
    .parameter "parent"
    .parameter "tf"

    .prologue
    const/4 v3, 0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ClockView;->access$200()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ClockView;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Rigo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    :cond_0
    const v1, 0x10203a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    const/high16 v2, 0x4160

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 128
    :cond_2
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmString:Ljava/lang/String;

    .line 130
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mPmString:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 142
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ClockView;->access$200()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ClockView;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rigo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 134
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ClockView;->access$200()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ClockView;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rigo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_1
    return-void

    .line 136
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
