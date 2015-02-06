.class public Lcom/android/internal/policy/impl/keyguard/YLTimeView;
.super Landroid/view/ViewGroup;
.source "YLTimeView.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.yulong.android.provider.coolshow"

.field public static final COLUMN_FILE_PATH:Ljava/lang/String; = "wallpaper_file_path"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DELAY:I = 0x50

.field private static final DURATION:I = 0x1f4

.field private static final FONT_PATH:Ljava/lang/String; = "font_path"

.field private static final NUM_RES_IDS:[I = null

.field private static final PATH_LOCKSCREENTEXTINFO:Ljava/lang/String; = "/lockscreenTextInfo"

.field private static final SCHEME:Ljava/lang/String; = "content://"

.field private static final TAG:Ljava/lang/String; = "KeyguardOwnerInfo"

.field private static final TEXT:Ljava/lang/String; = "text"

.field private static final TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static color:I

.field private static isShowOwnerInfo:Z

.field private static isShowTime:Z

.field private static text:Ljava/lang/String;

.field private static typeFace:Ljava/lang/String;


# instance fields
.field private mHour:Ljava/lang/String;

.field mImageHeight:I

.field private mImageView:[Landroid/widget/ImageView;

.field mImageWidth:I

.field mInfoImageHeight:I

.field mInfoImageWidth:I

.field private mMinute:Ljava/lang/String;

.field mNum:[Landroid/graphics/Bitmap;

.field private mNumId:[I

.field mTextViewHeight:I

.field mTextViewWidth:I

.field mUpdateMonitorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "content://com.yulong.android.provider.coolshow/lockscreenTextInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->CONTENT_URI:Landroid/net/Uri;

    .line 58
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->NUM_RES_IDS:[I

    return-void

    :array_0
    .array-data 0x4
        0xa1t 0x6t 0x8t 0x1t
        0xa2t 0x6t 0x8t 0x1t
        0xa3t 0x6t 0x8t 0x1t
        0xa4t 0x6t 0x8t 0x1t
        0xa5t 0x6t 0x8t 0x1t
        0xa6t 0x6t 0x8t 0x1t
        0xa7t 0x6t 0x8t 0x1t
        0xa8t 0x6t 0x8t 0x1t
        0xa9t 0x6t 0x8t 0x1t
        0xaat 0x6t 0x8t 0x1t
        0x77t 0x6t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    .line 66
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    .line 67
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    .line 68
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    .line 69
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageWidth:I

    .line 70
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageHeight:I

    .line 72
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mTextViewWidth:I

    .line 73
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mTextViewHeight:I

    .line 74
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    .line 215
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mUpdateMonitorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 82
    return-void

    .line 66
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    .line 66
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    .line 67
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    .line 68
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    .line 69
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageWidth:I

    .line 70
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageHeight:I

    .line 72
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mTextViewWidth:I

    .line 73
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mTextViewHeight:I

    .line 74
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    .line 215
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mUpdateMonitorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 89
    return-void

    .line 66
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    .line 66
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    .line 67
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    .line 68
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    .line 69
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageWidth:I

    .line 70
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageHeight:I

    .line 72
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mTextViewWidth:I

    .line 73
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mTextViewHeight:I

    .line 74
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    .line 215
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/YLTimeView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mUpdateMonitorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 95
    return-void

    .line 66
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    sput-object p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->color:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    sput p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->color:I

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->typeFace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    sput-object p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->typeFace:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->isShowOwnerInfo:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    sput-boolean p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->isShowOwnerInfo:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/YLTimeView;)Lcom/android/internal/policy/impl/keyguard/VerticalView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;

    return-object v0
.end method

.method private getOwnerDefineInfo()V
    .locals 14

    .prologue
    .line 238
    const/4 v6, 0x0

    .line 241
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    if-eqz v6, :cond_0

    .line 247
    const-string v1, "text"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 248
    .local v9, pathIndex:I
    const-string v1, "text_color"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 249
    .local v10, pathIndex1:I
    const-string v1, "font_path"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 250
    .local v11, pathIndex2:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 252
    .local v12, textInDB:Ljava/lang/String;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 253
    .local v7, colorInDB:I
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 254
    .local v13, typeFaceInDB:Ljava/lang/String;
    const-string v1, "KeyguardOwnerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "........textInDB ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v1, "KeyguardOwnerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "........colorInDB ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v1, "KeyguardOwnerInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "........typeFaceInDB ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v12, :cond_0

    .line 258
    sput-object v12, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->text:Ljava/lang/String;

    .line 259
    sput v7, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->color:I

    .line 260
    sput-object v13, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->typeFace:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v7           #colorInDB:I
    .end local v9           #pathIndex:I
    .end local v10           #pathIndex1:I
    .end local v11           #pathIndex2:I
    .end local v12           #textInDB:Ljava/lang/String;
    .end local v13           #typeFaceInDB:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v8

    .line 265
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "KeyguardOwnerInfo"

    const-string v2, " exception getOwnerDefineInfo() error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    if-eqz v6, :cond_1

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 268
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private makeValueAnimator(ILandroid/widget/ImageView;I)Landroid/animation/ValueAnimator;
    .locals 4
    .parameter "newId"
    .parameter "imageView"
    .parameter "delay"

    .prologue
    .line 175
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 177
    .local v0, anim:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/policy/impl/keyguard/YLTimeView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/YLTimeView;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 196
    return-object v0

    .line 175
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x34t 0x43t
    .end array-data
.end method


# virtual methods
.method public init()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 99
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->NUM_RES_IDS:[I

    aget v5, v5, v0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v4, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    .line 103
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    .line 104
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageWidth:I

    .line 105
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageHeight:I

    .line 107
    const-string v3, "ClockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "..................mInfoImageWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageHeight:I

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 110
    .local v2, lp1:Landroid/view/ViewGroup$LayoutParams;
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/VerticalView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/policy/impl/keyguard/VerticalView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;

    .line 111
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v0

    .line 117
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 118
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v9

    const/high16 v4, 0x3f00

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 121
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v10

    const/high16 v4, 0x3f00

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 123
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->getInstance()Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/LockscreenSettingManager;->ShowDataTime()Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->isShowTime:Z

    .line 124
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->isShowTime:Z

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v9

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v10

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :goto_2
    return v8

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v9

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v10

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mUpdateMonitorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 213
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 203
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mUpdateMonitorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 205
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    const/4 v6, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v6

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mVerticalView:Lcom/android/internal/policy/impl/keyguard/VerticalView;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mInfoImageWidth:I

    rsub-int v1, v1, 0x28a

    const/16 v2, 0x28a

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 301
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 281
    const/16 v1, 0x28a

    .line 282
    .local v1, width:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageHeight:I

    mul-int/lit8 v0, v2, 0x2

    .line 283
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 284
    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 140
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mHour:Ljava/lang/String;

    if-ne v6, p1, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mMinute:Ljava/lang/String;

    if-ne v6, p2, :cond_0

    .line 171
    :goto_0
    return-void

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mHour:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mMinute:Ljava/lang/String;

    .line 145
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mHour:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 146
    .local v3, iHour:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mMinute:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 148
    .local v4, iMinute:I
    const/4 v6, 0x4

    new-array v5, v6, [I

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v6, v6, v9

    aput v6, v5, v9

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v6, v6, v10

    aput v6, v5, v10

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v6, v6, v11

    aput v6, v5, v11

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v6, v6, v12

    aput v6, v5, v12

    .line 149
    .local v5, oldNumId:[I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    div-int/lit8 v7, v3, 0xa

    aput v7, v6, v9

    .line 150
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    rem-int/lit8 v7, v3, 0xa

    aput v7, v6, v10

    .line 151
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    div-int/lit8 v7, v4, 0xa

    aput v7, v6, v11

    .line 152
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    rem-int/lit8 v7, v4, 0xa

    aput v7, v6, v12

    .line 153
    aget v6, v5, v9

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 154
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v8, v8, v10

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v11

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v8, v8, v11

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v12

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNum:[Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v8, v8, v12

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 159
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 160
    .local v0, animSet:Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 161
    .local v1, delay:I
    const/4 v2, 0x3

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    .line 162
    aget v6, v5, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v7, v7, v2

    if-eq v6, v7, :cond_2

    .line 163
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mNumId:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->mImageView:[Landroid/widget/ImageView;

    aget-object v7, v7, v2

    invoke-direct {p0, v6, v7, v1}, Lcom/android/internal/policy/impl/keyguard/YLTimeView;->makeValueAnimator(ILandroid/widget/ImageView;I)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 166
    add-int/lit8 v1, v1, 0x50

    .line 161
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method
