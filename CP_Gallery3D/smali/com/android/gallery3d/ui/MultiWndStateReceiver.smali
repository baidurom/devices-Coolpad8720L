.class public Lcom/android/gallery3d/ui/MultiWndStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiWndStateReceiver.java"

# interfaces
.implements Lcom/android/gallery3d/util/MultiWndStateSubject;


# instance fields
.field private bInMultiWndState:Z

.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/util/MultiWndStateObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->bInMultiWndState:Z

    return-void
.end method

.method private multiWndStateChanged()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->notifyObservers()V

    .line 58
    return-void
.end method


# virtual methods
.method public getMultiWndState()Z
    .locals 4

    .prologue
    .line 64
    const-string v1, "yulong.multiwindow.open"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, state:Ljava/lang/String;
    const-string v1, "MultiWndState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultiWndState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->bInMultiWndState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public notifyObservers()V
    .locals 3

    .prologue
    .line 38
    iget-object v2, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->observers:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 43
    :cond_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/util/MultiWndStateObserver;

    .line 41
    .local v1, obv:Lcom/android/gallery3d/util/MultiWndStateObserver;
    invoke-interface {v1}, Lcom/android/gallery3d/util/MultiWndStateObserver;->update()V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->multiWndStateChanged()V

    .line 49
    const-string v1, "open"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->bInMultiWndState:Z

    .line 51
    const-string v1, "yulong.multiwindow.open"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, state:Ljava/lang/String;
    const-string v1, "MultiWndState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:mulWindowState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->bInMultiWndState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerObserver(Lcom/android/gallery3d/util/MultiWndStateObserver;)V
    .locals 1
    .parameter "obv"

    .prologue
    .line 20
    if-eqz p1, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->observers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->observers:Ljava/util/ArrayList;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    return-void
.end method

.method public removeObserver(Lcom/android/gallery3d/util/MultiWndStateObserver;)V
    .locals 2
    .parameter "obv"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->observers:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 31
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/gallery3d/ui/MultiWndStateReceiver;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
