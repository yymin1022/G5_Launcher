.class public Lcom/lge/launcher3/infos/HomeConfiguration;
.super Ljava/lang/Object;
.source "HomeConfiguration.java"


# static fields
.field private static final DEFAULT_CELL_COUNT_X:I = 0x4

.field private static final DEFAULT_CELL_COUNT_Y:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static sCellCountX:I

.field private static sCellCountY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/lge/launcher3/infos/HomeConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/infos/HomeConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellCountX(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 19
    sget v0, Lcom/lge/launcher3/infos/HomeConfiguration;->sCellCountX:I

    if-nez v0, :cond_7

    .line 20
    invoke-static {p0}, Lcom/lge/launcher3/infos/HomeConfiguration;->initCellCountXY(Landroid/content/Context;)V

    .line 22
    :cond_7
    sget v0, Lcom/lge/launcher3/infos/HomeConfiguration;->sCellCountX:I

    return v0
.end method

.method public static getCellCountY(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 26
    sget v0, Lcom/lge/launcher3/infos/HomeConfiguration;->sCellCountX:I

    if-nez v0, :cond_7

    .line 27
    invoke-static {p0}, Lcom/lge/launcher3/infos/HomeConfiguration;->initCellCountXY(Landroid/content/Context;)V

    .line 29
    :cond_7
    sget v0, Lcom/lge/launcher3/infos/HomeConfiguration;->sCellCountY:I

    return v0
.end method

.method private static initCellCountXY(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x0

    .line 36
    if-eqz p0, :cond_46

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 39
    if-eqz v2, :cond_3b

    .line 40
    const v0, 0x7f0c0031

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 41
    const v0, 0x7f0c0032

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 49
    :goto_18
    sget-object v2, Lcom/lge/launcher3/infos/HomeConfiguration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CellCountX = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CellCountY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sput v1, Lcom/lge/launcher3/infos/HomeConfiguration;->sCellCountX:I

    .line 52
    sput v0, Lcom/lge/launcher3/infos/HomeConfiguration;->sCellCountY:I

    .line 53
    return-void

    .line 43
    :cond_3b
    sget-object v1, Lcom/lge/launcher3/infos/HomeConfiguration;->TAG:Ljava/lang/String;

    const-string v2, "Failed to init CellCountXY: cannot get Resources"

    new-array v3, v3, [I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move v1, v0

    .line 45
    goto :goto_18

    .line 46
    :cond_46
    sget-object v1, Lcom/lge/launcher3/infos/HomeConfiguration;->TAG:Ljava/lang/String;

    const-string v2, "Failed to init CellCountXY: context is null"

    new-array v3, v3, [I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    move v1, v0

    goto :goto_18
.end method
