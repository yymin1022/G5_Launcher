.class public Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;
.super Ljava/lang/Object;
.source "LGUtilFunctionReflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/util/LGUtilFunctionReflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperManagerExReflect"
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.app.WallpaperManagerEx"

.field private static sTextColorForCurrentWallpaper:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;->sTextColorForCurrentWallpaper:Ljava/lang/reflect/Method;

    .line 108
    :try_start_4
    const-string v0, "android.app.WallpaperManagerEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_17

    .line 110
    const-string v1, "getTextColorForCurrentWallpaper"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;->sTextColorForCurrentWallpaper:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 115
    :cond_17
    :goto_17
    return-void

    .line 113
    :catch_18
    move-exception v0

    const-string v0, "WallpaperManagerExReflect"

    const-string v1, "not init: getTextColorForCurrentWallpaper "

    new-array v2, v3, [I

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_17
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextColorForCurrentWallpaper(Landroid/app/WallpaperManager;)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 122
    sget-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;->sTextColorForCurrentWallpaper:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2c

    .line 124
    :try_start_5
    sget-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;->sTextColorForCurrentWallpaper:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_13} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_13} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_13} :catch_30

    move-result v0

    .line 129
    :goto_14
    return v0

    .line 125
    :catch_15
    move-exception v0

    .line 126
    :goto_16
    const-string v2, "WallpaperManagerExReflect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTextColorForCurrentWallpaper "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [I

    invoke-static {v2, v0, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    :cond_2c
    move v0, v1

    .line 129
    goto :goto_14

    .line 125
    :catch_2e
    move-exception v0

    goto :goto_16

    :catch_30
    move-exception v0

    goto :goto_16
.end method

.method public static possibleToUseWallpapaerApi()Z
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;->sTextColorForCurrentWallpaper:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
