.class public Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;
.super Ljava/lang/Object;
.source "CPSetMtu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/modemservice/CPSetMtu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "mtu_XmlManager"
.end annotation


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "xmlFile"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const-string v1, "CPSetMtu"

    iput-object v1, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    .line 144
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "init mtu_XmlManager "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0, p1}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception init1 parser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public Find_OperatorByProperties(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 11
    .parameter "phone"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 191
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 192
    const-string v3, "cdma.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator1:Ljava/lang/String;

    .line 199
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :goto_1
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v4, "operator"

    invoke-virtual {v3, v4}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, operator:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 210
    if-nez v2, :cond_2

    .line 211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 213
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    const-string v4, "1460"

    aput-object v4, v3, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 195
    .end local v1           #i:I
    .end local v2           #operator:Ljava/lang/String;
    :cond_1
    const-string v3, "gsm.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator2:Ljava/lang/String;

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 203
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 205
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 217
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #operator:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator1:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    :cond_3
    iget-object v3, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mtu_operator1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "default_2g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 220
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "default_3g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 221
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "mms_2g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 222
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "mms_3g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 223
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "unknown_2g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 224
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value1:[Ljava/lang/String;

    const/4 v4, 0x5

    sget-object v5, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v6, "unknown_3g"

    invoke-virtual {v5, v6}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 247
    :cond_4
    :goto_3
    return-void

    .line 228
    :cond_5
    if-nez v2, :cond_6

    .line 229
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 231
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    const-string v4, "1460"

    aput-object v4, v3, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 235
    .end local v1           #i:I
    :cond_6
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator2:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    :cond_7
    iget-object v3, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mtu_operator2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_operator2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "default_2g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 238
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "default_3g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 239
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "mms_2g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 240
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "mms_3g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 241
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    sget-object v4, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v5, "unknown_2g"

    invoke-virtual {v4, v5}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 242
    sget-object v3, Lcom/yulong/android/modemservice/CPSetMtu;->mtu_value2:[Ljava/lang/String;

    const/4 v4, 0x5

    sget-object v5, Lcom/yulong/android/modemservice/CPSetMtu;->mtuxmlManager:Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;

    const-string v6, "unknown_3g"

    invoke-virtual {v5, v6}, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_3
.end method

.method public init(Ljava/lang/String;)V
    .locals 8
    .parameter "xmlFile"

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 149
    .local v2, featureReader:Ljava/io/FileReader;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .local v1, featureFile:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 154
    .end local v2           #featureReader:Ljava/io/FileReader;
    .local v3, featureReader:Ljava/io/FileReader;
    :try_start_1
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 155
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v5, "mtus"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 166
    if-eqz v3, :cond_0

    .line 167
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    move-object v2, v3

    .line 173
    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    if-eqz v2, :cond_1

    .line 167
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 169
    :catch_1
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in featureReader.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 161
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_5
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in comm-feature.conf parser "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    if-eqz v2, :cond_1

    .line 167
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 169
    :catch_3
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in featureReader.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 162
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 163
    .restart local v0       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in comm-feature.conf parser "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 166
    if-eqz v2, :cond_1

    .line 167
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 169
    :catch_5
    move-exception v0

    .line 170
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in featureReader.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 166
    :goto_6
    if-eqz v2, :cond_2

    .line 167
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 165
    :cond_2
    :goto_7
    throw v4

    .line 169
    :catch_6
    move-exception v0

    .line 170
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException in featureReader.close() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #featureReader:Ljava/io/FileReader;
    .restart local v3       #featureReader:Ljava/io/FileReader;
    :catch_7
    move-exception v0

    .line 170
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException in featureReader.close() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    goto :goto_6

    .line 162
    .end local v2           #featureReader:Ljava/io/FileReader;
    .restart local v3       #featureReader:Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    goto :goto_5

    .line 160
    .end local v2           #featureReader:Ljava/io/FileReader;
    .restart local v3       #featureReader:Ljava/io/FileReader;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    goto/16 :goto_4

    .line 157
    .end local v2           #featureReader:Ljava/io/FileReader;
    .restart local v3       #featureReader:Ljava/io/FileReader;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3           #featureReader:Ljava/io/FileReader;
    .restart local v2       #featureReader:Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method public mtu_getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "attributeName"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yulong/android/modemservice/CPSetMtu$mtu_XmlManager;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
