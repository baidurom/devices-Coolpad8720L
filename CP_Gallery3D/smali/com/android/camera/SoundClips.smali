.class public Lcom/android/camera/SoundClips;
.super Ljava/lang/Object;
.source "SoundClips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SoundClips$SoundPoolPlayer;,
        Lcom/android/camera/SoundClips$Player;
    }
.end annotation


# direct methods
.method public static getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/SoundClips$SoundPoolPlayer;

    invoke-direct {v0, p0}, Lcom/android/camera/SoundClips$SoundPoolPlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
