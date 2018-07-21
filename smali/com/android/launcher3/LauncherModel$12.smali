.class Lcom/android/launcher3/LauncherModel$12;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->updateFolderItemsRankToBePacked(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$container:I

.field private final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(ILandroid/content/ContentResolver;)V
    .registers 3

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/LauncherModel$12;->val$container:I

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$12;->val$cr:Landroid/content/ContentResolver;

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 1180
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    .line 1181
    const-string v3, "container = ?"

    .line 1182
    new-array v4, v1, [Ljava/lang/String;

    iget v0, p0, Lcom/android/launcher3/LauncherModel$12;->val$container:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1183
    const-string v5, "rank"

    .line 1185
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$12;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    move v0, v7

    .line 1189
    :goto_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1199
    return-void

    .line 1190
    :cond_27
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1191
    const-string v1, "screen"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1192
    const-string v1, "cellX"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1193
    const-string v1, "cellY"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1194
    const-string v4, "rank"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$12;->val$cr:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v1

    goto :goto_20
.end method
