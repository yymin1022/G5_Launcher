.class public Lcom/lge/launcher3/folder/FolderColorUtil;
.super Ljava/lang/Object;
.source "FolderColorUtil.java"


# static fields
.field private static sFolderBGColor:[I

.field private static sFolderTextColor:[I

.field private static sLauncherIconMask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xc

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sFolderTextColor:[I

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sFolderBGColor:[I

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sLauncherIconMask:Ljava/lang/ref/WeakReference;

    return-void

    .line 14
    :array_14
    .array-data 4
        0x7f0b002f
        0x7f0b0030
        0x7f0b0031
        0x7f0b0032
        0x7f0b0033
        0x7f0b0034
        0x7f0b0035
        0x7f0b0036
        0x7f0b0037
        0x7f0b0038
        0x7f0b0039
        0x7f0b003a
    .end array-data

    .line 20
    :array_30
    .array-data 4
        0x7f0b0023
        0x7f0b0024
        0x7f0b0025
        0x7f0b0026
        0x7f0b0027
        0x7f0b0028
        0x7f0b0029
        0x7f0b002a
        0x7f0b002b
        0x7f0b002c
        0x7f0b002d
        0x7f0b002e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destoryFolderIconMask()V
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sLauncherIconMask:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    .line 57
    sget-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sLauncherIconMask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sLauncherIconMask:Ljava/lang/ref/WeakReference;

    .line 60
    :cond_c
    return-void
.end method

.method public static getColorMax()I
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sFolderTextColor:[I

    array-length v0, v0

    return v0
.end method

.method public static getFolderBGColor(Landroid/content/Context;I)I
    .registers 5

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/folder/FolderColorUtil;->sFolderBGColor:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public static getFolderColorDrawble(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 40
    invoke-static {p0, p1}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderBGColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 41
    return-object v0
.end method

.method public static getFolderIconMask(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 48
    sget-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sLauncherIconMask:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sLauncherIconMask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 49
    :cond_c
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sLauncherIconMask:Ljava/lang/ref/WeakReference;

    .line 52
    :cond_1e
    sget-object v0, Lcom/lge/launcher3/folder/FolderColorUtil;->sLauncherIconMask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getFolderTextColor(Landroid/content/Context;I)I
    .registers 5

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/folder/FolderColorUtil;->sFolderTextColor:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method
