.class public Lcom/android/launcher3/FullScreenItemInfo;
.super Lcom/android/launcher3/ItemInfo;
.source "FullScreenItemInfo.java"


# instance fields
.field public resUri:Ljava/lang/String;

.field public widgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 15
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/launcher3/FullScreenItemInfo;->itemType:I

    .line 16
    const-wide/16 v0, -0x12d

    iput-wide v0, p0, Lcom/android/launcher3/FullScreenItemInfo;->screenId:J

    .line 17
    iput v2, p0, Lcom/android/launcher3/FullScreenItemInfo;->cellX:I

    .line 18
    iput v2, p0, Lcom/android/launcher3/FullScreenItemInfo;->cellY:I

    .line 19
    iput v2, p0, Lcom/android/launcher3/FullScreenItemInfo;->widgetId:I

    .line 21
    if-eqz p1, :cond_2a

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 23
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/FullScreenItemInfo;->spanX:I

    .line 24
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/FullScreenItemInfo;->spanY:I

    .line 26
    :cond_2a
    return-void
.end method


# virtual methods
.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .registers 7

    .prologue
    .line 30
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/launcher3/FullScreenItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    const-string v0, "container"

    iget-wide v2, p0, Lcom/android/launcher3/FullScreenItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    const-string v0, "screen"

    iget-wide v2, p0, Lcom/android/launcher3/FullScreenItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher3/FullScreenItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher3/FullScreenItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher3/FullScreenItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher3/FullScreenItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string v0, "intent"

    iget-object v1, p0, Lcom/android/launcher3/FullScreenItemInfo;->resUri:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher3/FullScreenItemInfo;->widgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    return-void
.end method
