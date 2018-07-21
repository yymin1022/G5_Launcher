.class Lcom/lge/launcher3/debug/LGResouceCheckTool$5;
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
    .line 41
    invoke-direct {p0, p1}, Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public check(Landroid/content/Context;Ljava/lang/reflect/Field;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 45
    return-void
.end method
