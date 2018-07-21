.class Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;
.super Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
.source "HiddenMenuDBViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/debug/HiddenMenuDBViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyDatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/debug/HiddenMenuDBViewer;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;->this$0:Lcom/lge/launcher3/debug/HiddenMenuDBViewer;

    .line 58
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/HiddenMenuDBViewer$MyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 64
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "mesage"

    aput-object v0, v2, v7

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    const/4 v2, 0x0

    :try_start_1f
    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 78
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Success"

    aput-object v5, v2, v4

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    if-eqz v1, :cond_41

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_41

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_41
    .catch Landroid/database/SQLException; {:try_start_1f .. :try_end_41} :catch_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_41} :catch_5b

    .line 104
    :cond_41
    :goto_41
    return-object v0

    .line 89
    :catch_42
    move-exception v1

    .line 90
    const-string v2, "printing exception"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v0, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 96
    :catch_5b
    move-exception v1

    .line 98
    const-string v2, "printing exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v0, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_41
.end method
