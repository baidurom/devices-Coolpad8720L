.class Lcom/yulong/android/uitechno/service/YLUIThemeService$3;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "UitechnoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/uitechno/service/YLUIThemeService;->loadUserThemeProperties(Ljava/lang/String;Ljava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field start:Z

.field final synthetic this$0:Lcom/yulong/android/uitechno/service/YLUIThemeService;

.field final synthetic val$propertiesMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/yulong/android/uitechno/service/YLUIThemeService;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService$3;->this$0:Lcom/yulong/android/uitechno/service/YLUIThemeService;

    iput-object p2, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService$3;->val$propertiesMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService$3;->start:Z

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1272
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1273
    const-string/jumbo v2, "root"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1274
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService$3;->start:Z

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-boolean v2, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService$3;->start:Z

    if-eqz v2, :cond_0

    .line 1280
    new-instance v0, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;

    invoke-direct {v0}, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;-><init>()V

    .line 1281
    .local v0, property:Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;
    iput-object p2, v0, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->nodeName:Ljava/lang/String;

    .line 1282
    const-string v2, "key"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->key:Ljava/lang/String;

    .line 1283
    const-string/jumbo v2, "value"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->value:Ljava/lang/String;

    .line 1284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/yulong/android/uitechno/service/YLUIThemeService$Property;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1285
    .local v1, relKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/yulong/android/uitechno/service/YLUIThemeService$3;->val$propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
