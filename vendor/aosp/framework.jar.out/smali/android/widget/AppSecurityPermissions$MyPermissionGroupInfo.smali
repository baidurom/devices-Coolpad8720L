.class Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
.super Landroid/content/pm/PermissionGroupInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPermissionGroupInfo"
.end annotation


# instance fields
.field final mAllPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final mDevicePermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLabel:Ljava/lang/CharSequence;

.field final mNewPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mPersonalPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionGroupInfo;Landroid/content/Context;)V
    .locals 1
    .parameter "info"
    .parameter "context"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    .line 100
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PermissionInfo;Landroid/content/Context;)V
    .locals 1
    .parameter "perm"
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    .line 93
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method


# virtual methods
.method public loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "pm"

    .prologue
    .line 104
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 109
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 110
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 111
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 114
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "pm"

    .prologue
    .line 121
    iget v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    .line 123
    .local v1, themeId:I
    const v2, 0x103006e

    if-eq v1, v2, :cond_0

    const v2, 0x103012b

    if-ne v1, v2, :cond_1

    .line 124
    :cond_0
    iget v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    packed-switch v2, :pswitch_data_0

    .line 211
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 217
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v1           #themeId:I
    :goto_1
    return-object v0

    .line 126
    .restart local v1       #themeId:I
    :pswitch_0
    const v2, 0x108073b

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 129
    :pswitch_1
    const v2, 0x108073c

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 132
    :pswitch_2
    const v2, 0x108073d

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 135
    :pswitch_3
    const v2, 0x108073e

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 138
    :pswitch_4
    const v2, 0x108073f

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 141
    :pswitch_5
    const v2, 0x1080740

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 144
    :pswitch_6
    const v2, 0x1080741

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 147
    :pswitch_7
    const v2, 0x1080742

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 150
    :pswitch_8
    const v2, 0x1080743

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 153
    :pswitch_9
    const v2, 0x1080744

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 156
    :pswitch_a
    const v2, 0x1080745

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 159
    :pswitch_b
    const v2, 0x1080746

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 162
    :pswitch_c
    const v2, 0x1080747

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 165
    :pswitch_d
    const v2, 0x1080748

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 168
    :pswitch_e
    const v2, 0x1080749

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 171
    :pswitch_f
    const v2, 0x108074a

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 174
    :pswitch_10
    const v2, 0x108074b

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 177
    :pswitch_11
    const v2, 0x108074c

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 180
    :pswitch_12
    const v2, 0x108074d

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 183
    :pswitch_13
    const v2, 0x108074e

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto/16 :goto_0

    .line 186
    :pswitch_14
    const v2, 0x108074f

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto/16 :goto_0

    .line 189
    :pswitch_15
    const v2, 0x1080750

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto/16 :goto_0

    .line 192
    :pswitch_16
    const v2, 0x1080751

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto/16 :goto_0

    .line 195
    :pswitch_17
    const v2, 0x1080752

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto/16 :goto_0

    .line 198
    :pswitch_18
    const v2, 0x1080753

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto/16 :goto_0

    .line 201
    :pswitch_19
    const v2, 0x1080754

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto/16 :goto_0

    .line 204
    :pswitch_1a
    const v2, 0x1080755

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto/16 :goto_0

    .line 207
    :pswitch_1b
    const v2, 0x1080756

    iput v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    goto/16 :goto_0

    .line 217
    .end local v1           #themeId:I
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1080445
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method
