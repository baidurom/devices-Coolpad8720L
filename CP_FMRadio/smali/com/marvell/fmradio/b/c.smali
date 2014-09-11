.class public Lcom/marvell/fmradio/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadioXmlParser"

.field private static final bN:Z = true


# instance fields
.field private bO:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private bP:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/marvell/fmradio/b/c;->bO:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 44
    iput-object v0, p0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    .line 48
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/b/c;->bO:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 49
    iget-object v0, p0, Lcom/marvell/fmradio/b/c;->bO:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 50
    iget-object v0, p0, Lcom/marvell/fmradio/b/c;->bO:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public b(Lcom/marvell/fmradio/c/e;)Z
    .locals 16
    .parameter

    .prologue
    .line 58
    const-string v1, "/data/data/com.marvell.fmradio/files/channels.xml"

    .line 59
    const/4 v11, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v3, 0x0

    .line 69
    const-string v2, "FMRadioXmlParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parse file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/marvell/fmradio/b/c;->bO:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v2, :cond_1

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 276
    :goto_0
    return v1

    .line 75
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-interface {v2, v12, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    const/4 v2, 0x0

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move v15, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v15

    .line 80
    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 279
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    goto :goto_1

    .line 83
    :pswitch_0
    const-string v11, "FMRadioXmlParser"

    const-string v12, "START_DOCUMENT"

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v11, "FMRadioXmlParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TagName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v11, "FMRadio"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 94
    const/4 v10, 0x1

    .line 95
    goto :goto_2

    .line 98
    :cond_3
    const-string v11, "List_Station"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 99
    const/4 v9, 0x1

    .line 100
    goto :goto_2

    .line 103
    :cond_4
    const-string v11, "Station"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v11, 0x0

    const-string v12, "freq"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 108
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const v12, 0x128e0

    if-lt v3, v12, :cond_5

    const v12, 0x1a5e0

    if-ge v12, v3, :cond_6

    .line 110
    :cond_5
    const/4 v3, 0x0

    .line 111
    goto :goto_2

    .line 114
    :cond_6
    const/4 v7, 0x1

    .line 115
    new-instance v3, Lcom/marvell/fmradio/c/c;

    invoke-direct {v3}, Lcom/marvell/fmradio/c/c;-><init>()V

    .line 117
    iput-object v11, v3, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    .line 118
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    .line 121
    const-string v11, "FMRadioXmlParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Station freq : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 127
    :cond_7
    const-string v11, "List_Favorite"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 128
    const/4 v8, 0x1

    .line 129
    goto/16 :goto_2

    .line 132
    :cond_8
    const-string v11, "Favorite"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v11, 0x0

    const-string v12, "freq"

    invoke-interface {v2, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 135
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 137
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const v12, 0x128e0

    if-lt v2, v12, :cond_9

    const v12, 0x1a5e0

    if-ge v12, v2, :cond_a

    .line 139
    :cond_9
    const/4 v2, 0x0

    .line 140
    goto/16 :goto_2

    .line 143
    :cond_a
    const/4 v6, 0x1

    .line 144
    new-instance v2, Lcom/marvell/fmradio/c/c;

    invoke-direct {v2}, Lcom/marvell/fmradio/c/c;-><init>()V

    .line 146
    iput-object v11, v2, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v12, 0x0

    const-string v13, "position"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    .line 152
    const-string v11, "FMRadioXmlParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Favorite freq : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " position : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 159
    :cond_b
    const-string v11, "Work"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v11, 0x0

    const-string v12, "freq"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 162
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 164
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    const v11, 0x128e0

    if-lt v4, v11, :cond_c

    const v11, 0x1a5e0

    if-ge v11, v4, :cond_d

    .line 166
    :cond_c
    const/4 v4, 0x0

    .line 167
    goto/16 :goto_2

    .line 170
    :cond_d
    const/4 v5, 0x1

    .line 171
    goto/16 :goto_2

    .line 177
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 180
    const-string v12, "FMRadioXmlParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TagContent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 186
    const-string v11, "Station"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 187
    const-string v11, "FMRadioXmlParser"

    const-string v12, "Station"

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 190
    :cond_e
    const-string v11, "Favorite"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 191
    const-string v11, "FMRadioXmlParser"

    const-string v12, "Favorite"

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 198
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/marvell/fmradio/b/c;->bP:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v11, "FMRadioXmlParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TagName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v11, "FMRadio"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 204
    const-string v11, "FMRadioXmlParser"

    const-string v12, "FMRadio"

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 208
    :cond_f
    const-string v11, "List_Station"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 209
    const-string v11, "FMRadioXmlParser"

    const-string v12, "List_Station"

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 213
    :cond_10
    const-string v11, "Station"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    if-eqz v3, :cond_11

    .line 214
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    iget-object v12, v3, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/e;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v11

    .line 216
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v12, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 217
    const-string v11, "FMRadioXmlParser"

    const-string v12, "Station"

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 221
    :cond_11
    const-string v11, "List_Favorite"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 222
    const-string v11, "FMRadioXmlParser"

    const-string v12, "List_Favorite"

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 226
    :cond_12
    const-string v11, "Favorite"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    if-eqz v2, :cond_13

    .line 227
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    iget-object v12, v2, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/e;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v11

    .line 229
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v12, v11, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 230
    const-string v11, "FMRadioXmlParser"

    const-string v12, "Favorite"

    invoke-static {v11, v12}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 234
    :cond_13
    const-string v11, "Work"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 235
    move-object/from16 v0, p1

    iput v4, v0, Lcom/marvell/fmradio/c/e;->ci:I

    goto/16 :goto_2

    .line 242
    :pswitch_4
    const-string v1, "FMRadioXmlParser"

    const-string v2, "END_DOCUMENT"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    if-nez v10, :cond_14

    .line 245
    const-string v1, "FMRadioXmlParser"

    const-string v2, "Failed to find tag: FMRadio"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 249
    :cond_14
    if-nez v9, :cond_15

    .line 250
    const-string v1, "FMRadioXmlParser"

    const-string v2, "Failed to find tag: List_Station"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 254
    :cond_15
    if-nez v7, :cond_16

    .line 255
    const-string v1, "FMRadioXmlParser"

    const-string v2, "Failed to find tag: Station"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 260
    :cond_16
    if-nez v8, :cond_17

    .line 261
    const-string v1, "FMRadioXmlParser"

    const-string v2, "Failed to find tag: List_Favorite"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 265
    :cond_17
    if-nez v6, :cond_18

    .line 266
    const-string v1, "FMRadioXmlParser"

    const-string v2, "Failed to find tag: Favorite"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 271
    :cond_18
    if-nez v5, :cond_19

    .line 272
    const-string v1, "FMRadioXmlParser"

    const-string v2, "Failed to find tag: Work"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "FMRadioXmlParser"

    const-string v2, "We ignore work freq"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_19
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
