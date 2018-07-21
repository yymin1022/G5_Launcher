.class Lcom/android/launcher3/LauncherModel$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$items:Ljava/util/ArrayList;

.field private final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field private final synthetic val$valuesList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$8;->val$items:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$8;->val$valuesList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$8;->val$stackTrace:[Ljava/lang/StackTraceElement;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 802
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 803
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 804
    const/4 v0, 0x0

    move v2, v0

    :goto_d
    if-lt v2, v4, :cond_17

    .line 815
    :try_start_f
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_45

    .line 819
    :goto_16
    return-void

    .line 805
    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 806
    iget-wide v6, v0, Lcom/android/launcher3/ItemInfo;->id:J

    .line 807
    invoke-static {v6, v7}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v5

    .line 808
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$8;->val$valuesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 810
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$8;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v6, v7, v1}, Lcom/android/launcher3/LauncherModel;->updateItemArrays(Lcom/android/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 804
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 816
    :catch_45
    move-exception v0

    .line 817
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method
