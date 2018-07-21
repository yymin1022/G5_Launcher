.class Lcom/lge/launcher3/debug/LGResouceCheckTool$1;
.super Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;
.source "LGResouceCheckTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/debug/LGResouceCheckTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public check(Landroid/content/Context;Ljava/lang/reflect/Field;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 25
    return-void
.end method
