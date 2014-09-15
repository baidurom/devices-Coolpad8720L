.class Lcom/android/camera/PhotoModule$18;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->adviceChangeStoragePath()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 7958
    iput-object p1, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 7961
    packed-switch p2, :pswitch_data_0

    .line 7972
    :goto_0
    return-void

    .line 7963
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/Storage;->mIsExternalSdPriority:Z

    .line 7964
    iget-object v0, p0, Lcom/android/camera/PhotoModule$18;->this$0:Lcom/android/camera/PhotoModule;

    #getter for: Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_camera_storage_path_key"

    const-string v2, "internal"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CameraSettings;->overrideListValue(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 7961
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
