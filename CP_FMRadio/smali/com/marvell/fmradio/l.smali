.class Lcom/marvell/fmradio/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:Lcom/marvell/fmradio/MainActivity;


# direct methods
.method constructor <init>(Lcom/marvell/fmradio/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1028
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1133
    :pswitch_0
    const-string v0, "FMRadioMainUI"

    const-string v1, "invalid view id"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1030
    :pswitch_1
    const-string v1, "FMRadioMainUI"

    const-string v2, "onClick decrease"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->j(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    const v1, 0x155cc

    iget-object v2, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v2

    iget v2, v2, Lcom/marvell/fmradio/c/e;->ci:I

    if-ge v1, v2, :cond_0

    .line 1036
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<tune_down_button> mIsTune:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MainActivity;->k(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->k(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v1

    iget v2, v1, Lcom/marvell/fmradio/c/e;->ci:I

    add-int/lit8 v2, v2, -0x64

    iput v2, v1, Lcom/marvell/fmradio/c/e;->ci:I

    .line 1039
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v2, "com.marvell.fmradio.SETCHANNEL"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v0}, Lcom/marvell/fmradio/MainActivity;->d(Lcom/marvell/fmradio/MainActivity;Z)Z

    goto :goto_0

    .line 1046
    :pswitch_2
    const-string v1, "FMRadioMainUI"

    const-string v2, "onClick increase"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->j(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v1

    iget v1, v1, Lcom/marvell/fmradio/c/e;->ci:I

    const v2, 0x1a7d4

    if-ge v1, v2, :cond_0

    .line 1052
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<tune_up_button> mIsTune:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MainActivity;->k(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->k(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->c(Lcom/marvell/fmradio/MainActivity;)Lcom/marvell/fmradio/c/e;

    move-result-object v1

    iget v2, v1, Lcom/marvell/fmradio/c/e;->ci:I

    add-int/lit8 v2, v2, 0x64

    iput v2, v1, Lcom/marvell/fmradio/c/e;->ci:I

    .line 1055
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v2, "com.marvell.fmradio.SETCHANNEL"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1056
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v0}, Lcom/marvell/fmradio/MainActivity;->d(Lcom/marvell/fmradio/MainActivity;Z)Z

    goto/16 :goto_0

    .line 1062
    :pswitch_3
    const-string v1, "FMRadioMainUI"

    const-string v2, "onClick PrevStation"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->j(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<seek_down_button> mIsTune:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MainActivity;->k(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->k(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v2, "com.marvell.fmradio.SCANPREV"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v0}, Lcom/marvell/fmradio/MainActivity;->d(Lcom/marvell/fmradio/MainActivity;Z)Z

    goto/16 :goto_0

    .line 1075
    :pswitch_4
    const-string v1, "FMRadioMainUI"

    const-string v2, "onClick nextstation"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->j(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    const-string v1, "FMRadioMainUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<seek_up_button> mIsTune:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MainActivity;->k(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1}, Lcom/marvell/fmradio/MainActivity;->k(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v2, "com.marvell.fmradio.SCANNEXT"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v1, v0}, Lcom/marvell/fmradio/MainActivity;->d(Lcom/marvell/fmradio/MainActivity;Z)Z

    goto/16 :goto_0

    .line 1088
    :pswitch_5
    const-string v0, "FMRadioMainUI"

    const-string v2, "onClick fm_power menu"

    invoke-static {v0, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->j(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1090
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->l(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f050034

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->m(Lcom/marvell/fmradio/MainActivity;)V

    goto/16 :goto_0

    .line 1096
    :cond_2
    const-string v0, "FMRadioMainUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onClick fm_power menu> am.getMode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->h(Lcom/marvell/fmradio/MainActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->h(Lcom/marvell/fmradio/MainActivity;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1102
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    iget-object v1, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    const v2, 0x7f050059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1104
    :cond_3
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->n(Lcom/marvell/fmradio/MainActivity;)V

    goto/16 :goto_0

    .line 1110
    :pswitch_6
    const-string v2, "FMRadioMainUI"

    const-string v3, "onClick fm_speaker menu"

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v2, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->j(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->o(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1116
    iget-object v2, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->p(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020017

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1120
    :goto_1
    iget-object v2, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    iget-object v3, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v3}, Lcom/marvell/fmradio/MainActivity;->o(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    invoke-static {v2, v0}, Lcom/marvell/fmradio/MainActivity;->e(Lcom/marvell/fmradio/MainActivity;Z)Z

    .line 1121
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.SPEAKER"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1118
    :cond_4
    iget-object v2, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->p(Lcom/marvell/fmradio/MainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020026

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1120
    goto :goto_2

    .line 1125
    :pswitch_7
    const-string v2, "FMRadioMainUI"

    const-string v3, "onClick fm_record_button menu"

    invoke-static {v2, v3}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v2, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    invoke-static {v2}, Lcom/marvell/fmradio/MainActivity;->j(Lcom/marvell/fmradio/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    invoke-static {}, Lcom/marvell/fmradio/MainActivity;->af()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_3
    invoke-static {v0}, Lcom/marvell/fmradio/MainActivity;->h(Z)Z

    .line 1130
    iget-object v0, p0, Lcom/marvell/fmradio/l;->b:Lcom/marvell/fmradio/MainActivity;

    const-string v1, "com.marvell.fmradio.RECORD"

    invoke-static {v0, v1}, Lcom/marvell/fmradio/MainActivity;->a(Lcom/marvell/fmradio/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1129
    goto :goto_3

    .line 1028
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001a
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
