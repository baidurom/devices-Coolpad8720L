.class public Lcom/android/camera/PreferenceInflater;
.super Ljava/lang/Object;
.source "PreferenceInflater.java"


# static fields
.field private static final CTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/android/camera/PreferenceInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/PreferenceInflater;->PACKAGE_NAME:Ljava/lang/String;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PreferenceInflater;->CTOR_SIGNATURE:[Ljava/lang/Class;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/PreferenceInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/camera/PreferenceInflater;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/camera/CameraPreference;
    .locals 11
    .parameter "parser"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 89
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 90
    .local v1, attrs:Landroid/util/AttributeSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/CameraPreference;>;"
    new-array v0, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/PreferenceInflater;->mContext:Landroid/content/Context;

    aput-object v7, v0, v9

    aput-object v1, v0, v8

    .line 94
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 95
    .local v6, type:I
    :goto_0
    if-eq v6, v8, :cond_3

    .line 96
    if-eq v6, v10, :cond_1

    .line 95
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/android/camera/PreferenceInflater;->newPreference(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/camera/CameraPreference;

    move-result-object v5

    .line 99
    .local v5, pref:Lcom/android/camera/CameraPreference;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 100
    .local v2, depth:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v2, v7, :cond_2

    .line 101
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_2
    if-le v2, v8, :cond_0

    .line 106
    add-int/lit8 v7, v2, -0x2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v7, v5}, Lcom/android/camera/PreferenceGroup;->addChild(Lcom/android/camera/CameraPreference;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 114
    .end local v2           #depth:I
    .end local v5           #pref:Lcom/android/camera/CameraPreference;
    .end local v6           #type:I
    :catch_0
    move-exception v3

    .line 115
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Landroid/view/InflateException;

    invoke-direct {v7, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 103
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #depth:I
    .restart local v5       #pref:Lcom/android/camera/CameraPreference;
    .restart local v6       #type:I
    :cond_2
    add-int/lit8 v7, v2, -0x1

    :try_start_1
    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 116
    .end local v2           #depth:I
    .end local v5           #pref:Lcom/android/camera/CameraPreference;
    .end local v6           #type:I
    :catch_1
    move-exception v3

    .line 117
    .local v3, e:Ljava/io/IOException;
    new-instance v7, Landroid/view/InflateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 110
    .end local v3           #e:Ljava/io/IOException;
    .restart local v6       #type:I
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 111
    new-instance v7, Landroid/view/InflateException;

    const-string v8, "No root element found"

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 113
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/CameraPreference;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v7
.end method

.method private newPreference(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/camera/CameraPreference;
    .locals 6
    .parameter "tagName"
    .parameter "args"

    .prologue
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/PreferenceInflater;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, name:Ljava/lang/String;
    sget-object v3, Lcom/android/camera/PreferenceInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 58
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-nez v0, :cond_3

    .line 66
    :try_start_0
    const-string v3, "PreferenceGroup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    new-instance v5, Lcom/android/camera/PreferenceGroup;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Landroid/util/AttributeSet;

    invoke-direct {v5, v3, v4}, Lcom/android/camera/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v3, v5

    .line 76
    :goto_0
    return-object v3

    .line 68
    :cond_0
    const-string v3, "IconListPreference"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    new-instance v5, Lcom/android/camera/IconListPreference;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Landroid/util/AttributeSet;

    invoke-direct {v5, v3, v4}, Lcom/android/camera/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v3, v5

    goto :goto_0

    .line 70
    :cond_1
    const-string v3, "RecordLocationPreference"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    new-instance v5, Lcom/android/camera/RecordLocationPreference;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Landroid/util/AttributeSet;

    invoke-direct {v5, v3, v4}, Lcom/android/camera/RecordLocationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v3, v5

    goto :goto_0

    .line 72
    :cond_2
    const-string v3, "ListPreference"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    new-instance v5, Lcom/android/camera/ListPreference;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Landroid/util/AttributeSet;

    invoke-direct {v5, v3, v4}, Lcom/android/camera/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    goto :goto_0

    .line 76
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "While create instance of"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public inflate(I)Lcom/android/camera/CameraPreference;
    .locals 1
    .parameter "resId"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/PreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/camera/CameraPreference;

    move-result-object v0

    return-object v0
.end method
