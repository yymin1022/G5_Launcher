.class public Lcom/lge/launcher3/util/DDTUtils;
.super Ljava/lang/Object;
.source "DDTUtils.java"


# static fields
.field public static final LGE_PACKAGE:Ljava/lang/String; = "com.lge"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/launcher3/util/DDTUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/util/DDTUtils;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToCushionIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 67
    if-nez p1, :cond_4

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/util/DDTUtils;->convertToCushionIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3
.end method

.method public static convertToCushionIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 84
    if-nez p1, :cond_4

    .line 85
    const/4 p1, 0x0

    .line 101
    :cond_3
    :goto_3
    return-object p1

    .line 88
    :cond_4
    if-nez p2, :cond_a

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 93
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/lge/content/pm/PackageManagerEx;->getDefault()Lcom/lge/content/pm/PackageManagerEx;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/lge/content/pm/PackageManagerEx;->getIconDrawableAsTheme(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_11} :catch_16
    .catch Ljava/lang/NoSuchMethodError; {:try_start_a .. :try_end_11} :catch_18

    move-result-object v0

    .line 95
    if-eqz v0, :cond_3

    move-object p1, v0

    .line 98
    goto :goto_3

    :catch_16
    move-exception v0

    goto :goto_3

    :catch_18
    move-exception v0

    goto :goto_3
.end method

.method public static convertToCushionIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 75
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 76
    invoke-static {p0, p1, p2, v0}, Lcom/lge/launcher3/util/ResourcesUtils;->getDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    if-nez v0, :cond_12

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_11
    return-object v0

    :cond_12
    invoke-static {p0, v0, p1}, Lcom/lge/launcher3/util/DDTUtils;->convertToCushionIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_11
.end method

.method public static getColorAccentType2FromTheme(Landroid/content/Context;I)I
    .registers 6

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/lge/R$attr;->colorAccentType2:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 116
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 117
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_19} :catch_1b

    move p1, v0

    .line 120
    :goto_1a
    return p1

    :catch_1b
    move-exception v0

    goto :goto_1a
.end method

.method public static getLGEColor(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/lge/launcher3/util/DDTUtils;->getLGEColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public static getLGEColorId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 29
    const-string v0, "color"

    const-string v2, "com.lge"

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 30
    if-nez v0, :cond_18

    .line 31
    const-string v0, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 33
    :cond_18
    return v0
.end method

.method public static getLGEDimen(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/lge/launcher3/util/DDTUtils;->getLGEDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getLGEDimenId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    const-string v0, "dimen"

    const-string v2, "com.lge"

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 43
    if-nez v0, :cond_18

    .line 44
    const-string v0, "dimen"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 46
    :cond_18
    return v0
.end method

.method public static gettextColorPrimaryType5FromTheme(Landroid/content/Context;I)I
    .registers 6

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/lge/R$attr;->textColorPrimaryType5:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 127
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 128
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_19} :catch_1b

    move p1, v0

    .line 131
    :goto_1a
    return p1

    :catch_1b
    move-exception v0

    goto :goto_1a
.end method

.method public static isAdditionalThemeApplied(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 51
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    sget v2, Lcom/lge/R$bool;->config_theme_is_additional:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_a} :catch_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_a} :catch_e

    move-result v0

    .line 56
    :goto_b
    return v0

    :catch_c
    move-exception v1

    goto :goto_b

    :catch_e
    move-exception v1

    goto :goto_b

    .line 54
    :catch_10
    move-exception v1

    goto :goto_b
.end method

.method public static loadIconWithCusion(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 61
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/lge/launcher3/util/DDTUtils;->convertToCushionIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static needToConvertCushinIcon(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 106
    :try_start_1
    invoke-static {}, Lcom/lge/content/pm/PackageManagerEx;->getDefault()Lcom/lge/content/pm/PackageManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/lge/content/pm/PackageManagerEx;->isResOverlayed(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_8} :catch_e
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_8} :catch_10

    move-result v1

    if-eqz v1, :cond_c

    .line 108
    :goto_b
    return v0

    .line 106
    :cond_c
    const/4 v0, 0x1

    goto :goto_b

    .line 108
    :catch_e
    move-exception v1

    goto :goto_b

    :catch_10
    move-exception v1

    goto :goto_b
.end method
