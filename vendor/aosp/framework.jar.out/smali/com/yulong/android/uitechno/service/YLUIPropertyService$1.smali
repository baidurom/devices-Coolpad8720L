.class Lcom/yulong/android/uitechno/service/YLUIPropertyService$1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "UitechnoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/uitechno/service/YLUIPropertyService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field componentProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/yulong/android/uitechno/service/YLUIPropertyService;


# direct methods
.method constructor <init>(Lcom/yulong/android/uitechno/service/YLUIPropertyService;)V
    .locals 0
    .parameter

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService$1;->this$0:Lcom/yulong/android/uitechno/service/YLUIPropertyService;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
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
    .line 1561
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1562
    const-string v3, "component"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1563
    const-string/jumbo v3, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1564
    .local v0, component:Ljava/lang/String;
    const-string/jumbo v3, "uitechnoService.YLUIPropertyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "component == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService$1;->this$0:Lcom/yulong/android/uitechno/service/YLUIPropertyService;

    #calls: Lcom/yulong/android/uitechno/service/YLUIPropertyService;->getComponentProperties(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v3, v0}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->access$000(Lcom/yulong/android/uitechno/service/YLUIPropertyService;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService$1;->componentProperties:Ljava/util/HashMap;

    .line 1573
    .end local v0           #component:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    const-string v3, "item"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1567
    const-string v3, "key"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1568
    .local v1, key:Ljava/lang/String;
    const-string/jumbo v3, "uitechnoService.YLUIPropertyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string/jumbo v3, "value"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1570
    .local v2, value:Ljava/lang/String;
    const-string/jumbo v3, "uitechnoService.YLUIPropertyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService$1;->componentProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
