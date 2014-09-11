.class public Lcom/marvell/fmradio/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CmdXmlSerializer"


# instance fields
.field private aV:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/marvell/fmradio/c/e;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.marvell.fmradio/files/channels.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 50
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "UTF-8"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 55
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 59
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v4, "FMRadio"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v4, "List_Station"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v2, v1

    .line 62
    :goto_0
    iget-object v0, p1, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 63
    iget-object v0, p1, Lcom/marvell/fmradio/c/e;->cg:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 64
    iget-object v4, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "Station"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    iget-object v4, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "freq"

    iget-object v7, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    iget-object v4, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const-string v5, "Station"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v4, "List_Station"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v4, "List_Favorite"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    :goto_1
    iget-object v0, p1, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 73
    iget-object v0, p1, Lcom/marvell/fmradio/c/e;->ch:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/marvell/fmradio/c/c;

    .line 74
    iget-object v2, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const-string v5, "Favorite"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget-object v2, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const-string v5, "freq"

    iget-object v6, v0, Lcom/marvell/fmradio/c/c;->cb:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget-object v2, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const-string v5, "name"

    iget-object v6, v0, Lcom/marvell/fmradio/c/c;->mName:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget-object v2, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const-string v5, "position"

    iget-object v0, v0, Lcom/marvell/fmradio/c/c;->cc:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v4, "Favorite"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "List_Favorite"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Work"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "freq"

    iget v4, p1, Lcom/marvell/fmradio/c/e;->ci:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Work"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "FMRadio"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 91
    iget-object v0, p0, Lcom/marvell/fmradio/b/b;->aV:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 92
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_2
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "CmdXmlSerializer"

    const-string v2, "Fail to save data to /data/data/com.marvell.fmradio/files/channels.xml"

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 97
    :catch_1
    move-exception v0

    .line 98
    const-string v1, "CmdXmlSerializer"

    const-string v2, "Fail to save data to /data/data/com.marvell.fmradio/files/channels.xmldue to illegal character."

    invoke-static {v1, v2}, Lcom/marvell/fmradio/c/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
