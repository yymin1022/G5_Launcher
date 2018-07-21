.class Lcom/lge/launcher3/iconchange/IconChangeActivity$4;
.super Ljava/lang/Object;
.source "IconChangeActivity.java"

# interfaces
.implements Lcom/lge/launcher3/iconchange/IconChangeActivity$OnPhotoIconDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/iconchange/IconChangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$4;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoIconDeleted(Ljava/util/ArrayList;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/iconchange/IconItemInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 913
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move v6, v1

    .line 961
    :cond_c
    return v6

    .line 917
    :cond_d
    const-string v0, "LGIconChangeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " photo icons deleted."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$4;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 920
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v1

    .line 927
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v1

    move-object v7, v3

    :goto_3f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/iconchange/IconItemInfo;

    .line 928
    iget-object v1, v1, Lcom/lge/launcher3/iconchange/IconItemInfo;->id:Ljava/lang/String;

    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "iconId = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 931
    :try_start_62
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 932
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 931
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_fd
    .catchall {:try_start_62 .. :try_end_69} :catchall_fa

    move-result-object v3

    .line 933
    if-nez v3, :cond_101

    .line 956
    if-eqz v3, :cond_103

    .line 957
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v7, v3

    .line 934
    goto :goto_3f

    .line 938
    :cond_73
    :try_start_73
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 939
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 940
    const-string v7, "spanX"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    const-string v7, "spanY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const-string v7, "iconId"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 943
    const-string v7, "userCustomizedIcon"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 944
    sget-object v7, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "_id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 946
    const/4 v11, 0x0

    .line 944
    invoke-virtual {v0, v7, v6, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 948
    const-string v6, "LGIconChangeActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Restore to default icon (_id = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 949
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 948
    invoke-static {v6, v4}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    .line 937
    :goto_d0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_d3} :catch_df
    .catchall {:try_start_73 .. :try_end_d3} :catchall_f3

    move-result v4

    if-nez v4, :cond_73

    .line 956
    if-eqz v3, :cond_db

    .line 957
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_db
    move v6, v1

    move-object v7, v3

    goto/16 :goto_3f

    .line 954
    :catch_df
    move-exception v4

    :goto_e0
    :try_start_e0
    const-string v4, "LGIconChangeActivity"

    const-string v5, "PhotoIconDeletedListener : Cursor query exception"

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-static {v4, v5, v6}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_ea
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_f3

    .line 956
    if-eqz v3, :cond_db

    .line 957
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v6, v1

    move-object v7, v3

    goto/16 :goto_3f

    .line 955
    :catchall_f3
    move-exception v0

    .line 956
    :goto_f4
    if-eqz v3, :cond_f9

    .line 957
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 959
    :cond_f9
    throw v0

    .line 955
    :catchall_fa
    move-exception v0

    move-object v3, v7

    goto :goto_f4

    .line 954
    :catch_fd
    move-exception v1

    move v1, v6

    move-object v3, v7

    goto :goto_e0

    :cond_101
    move v1, v6

    goto :goto_d0

    :cond_103
    move-object v7, v3

    goto/16 :goto_3f
.end method
