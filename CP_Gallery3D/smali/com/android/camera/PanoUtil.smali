.class public Lcom/android/camera/PanoUtil;
.super Ljava/lang/Object;
.source "PanoUtil.java"


# direct methods
.method public static createName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "format"
    .parameter "dateTaken"

    .prologue
    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 25
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
