.class Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$1;
.super Ljava/lang/Object;
.source "LGWallpaperManagerUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;->initWallpaperManager(Landroid/content/Context;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$1;->val$context:Landroid/content/Context;

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 957
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil$1;->call()Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperManagerUtil;

    move-result-object v0

    return-object v0
.end method
