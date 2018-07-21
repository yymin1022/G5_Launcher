.class public Lcom/android/launcher3/LauncherBackupHelper;
.super Ljava/lang/Object;
.source "LauncherBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;,
        Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;
    }
.end annotation


# static fields
.field private static final APPWIDGET_ID_INDEX:I = 0x4

.field private static final APPWIDGET_PROVIDER_INDEX:I = 0x3

.field private static final BACKUP_VERSION:I = 0x3

.field private static final CELLX_INDEX:I = 0x5

.field private static final CELLY_INDEX:I = 0x6

.field private static final CONTAINER_INDEX:I = 0x7

.field private static final DEBUG:Z = false

.field private static final FAVORITE_PROJECTION:[Ljava/lang/String;

.field private static final ICON_INDEX:I = 0x8

.field private static final ICON_PACKAGE_INDEX:I = 0x9

.field private static final ICON_RESOURCE_INDEX:I = 0xa

.field private static final ICON_TYPE_INDEX:I = 0xb

.field private static final ID_INDEX:I = 0x0

.field private static final ID_MODIFIED:I = 0x1

.field private static final INTENT_INDEX:I = 0x2

.field private static final ITEM_TYPE_INDEX:I = 0xc

.field private static final JOURNAL_KEY:Ljava/lang/String; = "#"

.field private static final MAX_ICONS_PER_PASS:I = 0xa

.field private static final MAX_JOURNAL_SIZE:I = 0xf4240

.field private static final MAX_WIDGETS_PER_PASS:I = 0x5

.field private static final SCREEN_INDEX:I = 0xd

.field private static final SCREEN_PROJECTION:[Ljava/lang/String;

.field private static final SCREEN_RANK_INDEX:I = 0x2

.field private static final SPANX_INDEX:I = 0xe

.field private static final SPANY_INDEX:I = 0xf

.field private static final TAG:Ljava/lang/String; = "LauncherBackupHelper"

.field private static final TITLE_INDEX:I = 0x10

.field private static final VERBOSE:Z


# instance fields
.field private mBackupDataWasUpdated:Z

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mBuffer:[B

.field final mContext:Landroid/content/Context;

.field private mDeviceProfileData:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

.field private final mExistingKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field private mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mItemTypeMatchers:[Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;

.field private final mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/backup/BackupProtos$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBackupRestoreTime:J

.field private final mUserSerial:J

.field restoreSuccessful:Z

.field restoredBackupVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 93
    const-string v1, "modified"

    aput-object v1, v0, v4

    .line 94
    const-string v1, "intent"

    aput-object v1, v0, v5

    .line 95
    const-string v1, "appWidgetProvider"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    .line 96
    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 97
    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 98
    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 99
    const-string v2, "container"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 100
    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 101
    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 102
    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 103
    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 104
    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 105
    const-string v2, "screen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 106
    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 107
    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 108
    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 109
    const-string v2, "profileId"

    aput-object v2, v0, v1

    .line 91
    sput-object v0, Lcom/android/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    .line 130
    new-array v0, v6, [Ljava/lang/String;

    .line 131
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 132
    const-string v1, "modified"

    aput-object v1, v0, v4

    .line 133
    const-string v1, "screenRank"

    aput-object v1, v0, v5

    .line 130
    sput-object v0, Lcom/android/launcher3/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBuffer:[B

    .line 154
    iput v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoredBackupVersion:I

    .line 157
    iput-object p1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    .line 160
    iput-boolean v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoreSuccessful:Z

    .line 161
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mItemTypeMatchers:[Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 164
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mUserSerial:J

    .line 165
    return-void
.end method

.method private applyJournal(Lcom/android/launcher3/backup/BackupProtos$Journal;)V
    .registers 7

    .prologue
    .line 175
    iget-wide v0, p1, Lcom/android/launcher3/backup/BackupProtos$Journal;->t:J

    iput-wide v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mLastBackupRestoreTime:J

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 177
    iget-object v0, p1, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    if-eqz v0, :cond_13

    .line 178
    iget-object v1, p1, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_11
    if-lt v0, v2, :cond_18

    .line 182
    :cond_13
    iget v0, p1, Lcom/android/launcher3/backup/BackupProtos$Journal;->backupVersion:I

    iput v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoredBackupVersion:I

    .line 183
    return-void

    .line 178
    :cond_18
    aget-object v3, v1, v0

    .line 179
    iget-object v4, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-direct {p0, v3}, Lcom/android/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private backupFavorites(Landroid/app/backup/BackupDataOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 425
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    .line 426
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 425
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 428
    const/4 v0, -0x1

    :try_start_15
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 429
    :cond_18
    :goto_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_50

    move-result v0

    if-nez v0, :cond_22

    .line 442
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 444
    return-void

    .line 430
    :cond_22
    const/4 v0, 0x0

    :try_start_23
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 431
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/LauncherBackupHelper;->getKey(IJ)Lcom/android/launcher3/backup/BackupProtos$Key;

    move-result-object v0

    .line 433
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v2

    .line 435
    iget-object v3, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-wide v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mLastBackupRestoreTime:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_18

    .line 436
    :cond_48
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherBackupHelper;->packFavorite(Landroid/database/Cursor;)Lcom/android/launcher3/backup/BackupProtos$Favorite;

    move-result-object v2

    invoke-direct {p0, v0, v2, p1}, Lcom/android/launcher3/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_50

    goto :goto_18

    .line 441
    :catchall_50
    move-exception v0

    .line 442
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 443
    throw v0
.end method

.method private backupIcons(Landroid/app/backup/BackupDataOutput;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 523
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 525
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v8

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(itemType=0 OR itemType=1) AND "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 532
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 535
    const/4 v0, -0x1

    :try_start_35
    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v2, v6

    .line 536
    :cond_39
    :goto_39
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_89

    move-result v0

    if-nez v0, :cond_43

    .line 579
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 581
    return-void

    .line 537
    :cond_43
    const/4 v0, 0x0

    :try_start_44
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 538
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_89

    move-result-object v0

    .line 540
    const/4 v1, 0x0

    :try_start_4e
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 541
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_8e

    .line 545
    const/4 v1, 0x3

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/android/launcher3/backup/BackupProtos$Key;

    move-result-object v1

    .line 546
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :goto_65
    iget-object v6, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 554
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/net/URISyntaxException; {:try_start_4e .. :try_end_72} :catch_73
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_72} :catch_d1
    .catchall {:try_start_4e .. :try_end_72} :catchall_89

    goto :goto_39

    .line 572
    :catch_73
    move-exception v0

    :try_start_74
    const-string v0, "LauncherBackupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "invalid URI on application favorite: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_74 .. :try_end_88} :catchall_89

    goto :goto_39

    .line 578
    :catchall_89
    move-exception v0

    .line 579
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 580
    throw v0

    .line 548
    :cond_8e
    :try_start_8e
    const-string v0, "LauncherBackupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "empty intent on application favorite: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    move-object v1, v4

    goto :goto_65

    .line 555
    :cond_a5
    if-eqz v0, :cond_39

    .line 557
    const/16 v0, 0xa

    if-ge v2, v0, :cond_cc

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v5, v8}, Lcom/android/launcher3/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_39

    iget-object v5, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v5, v0, v8}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 561
    invoke-direct {p0, v7, v0}, Lcom/android/launcher3/LauncherBackupHelper;->packIcon(ILandroid/graphics/Bitmap;)Lcom/android/launcher3/backup/BackupProtos$Resource;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/android/launcher3/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    .line 562
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 565
    goto/16 :goto_39

    .line 568
    :cond_cc
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->dataChanged()V
    :try_end_cf
    .catch Ljava/net/URISyntaxException; {:try_start_8e .. :try_end_cf} :catch_73
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_cf} :catch_d1
    .catchall {:try_start_8e .. :try_end_cf} :catchall_89

    goto/16 :goto_39

    .line 574
    :catch_d1
    move-exception v0

    :try_start_d2
    const-string v0, "LauncherBackupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "unable to save application icon for favorite: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_d2 .. :try_end_e6} :catchall_89

    goto/16 :goto_39
.end method

.method private backupKeyToKey(Ljava/lang/String;)Lcom/android/launcher3/backup/BackupProtos$Key;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;
        }
    .end annotation

    .prologue
    .line 729
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/backup/BackupProtos$Key;->parseFrom([B)Lcom/android/launcher3/backup/BackupProtos$Key;

    move-result-object v0

    .line 730
    iget-wide v2, v0, Lcom/android/launcher3/backup/BackupProtos$Key;->checksum:J

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherBackupHelper;->checkKey(Lcom/android/launcher3/backup/BackupProtos$Key;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_36

    .line 732
    new-instance v0, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid key read from stream"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/LauncherBackupHelper;Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_28} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_28} :catch_2f

    .line 735
    :catch_28
    move-exception v0

    .line 736
    new-instance v1, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/LauncherBackupHelper;Ljava/lang/Throwable;)V

    throw v1

    .line 737
    :catch_2f
    move-exception v0

    .line 738
    new-instance v1, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/LauncherBackupHelper;Ljava/lang/Throwable;)V

    throw v1

    .line 734
    :cond_36
    return-object v0
.end method

.method private backupScreens(Landroid/app/backup/BackupDataOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 474
    sget-object v1, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher3/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 477
    const/4 v0, -0x1

    :try_start_12
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 479
    :cond_15
    :goto_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_4d

    move-result v0

    if-nez v0, :cond_1f

    .line 492
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 494
    return-void

    .line 480
    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 481
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 482
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/LauncherBackupHelper;->getKey(IJ)Lcom/android/launcher3/backup/BackupProtos$Key;

    move-result-object v0

    .line 483
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v2

    .line 485
    iget-object v3, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-wide v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mLastBackupRestoreTime:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_15

    .line 486
    :cond_45
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherBackupHelper;->packScreen(Landroid/database/Cursor;)Lcom/android/launcher3/backup/BackupProtos$Screen;

    move-result-object v2

    invoke-direct {p0, v0, v2, p1}, Lcom/android/launcher3/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_4c
    .catchall {:try_start_20 .. :try_end_4c} :catchall_4d

    goto :goto_15

    .line 491
    :catchall_4d
    move-exception v0

    .line 492
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 493
    throw v0
.end method

.method private backupWidgets(Landroid/app/backup/BackupDataOutput;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 619
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemType=4 AND "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->getUserSelectionArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 625
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 628
    const/4 v0, -0x1

    :try_start_32
    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v2, v6

    .line 629
    :cond_36
    :goto_36
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_6b

    move-result v0

    if-nez v0, :cond_40

    .line 662
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 664
    return-void

    .line 630
    :cond_40
    const/4 v0, 0x0

    :try_start_41
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 631
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 632
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 635
    if-eqz v6, :cond_70

    .line 636
    const/4 v0, 0x4

    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/android/launcher3/backup/BackupProtos$Key;

    move-result-object v1

    .line 637
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    .line 641
    :goto_59
    iget-object v5, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    iget v5, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoredBackupVersion:I

    if-lt v5, v10, :cond_87

    .line 645
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_41 .. :try_end_6a} :catchall_6b

    goto :goto_36

    .line 661
    :catchall_6b
    move-exception v0

    .line 662
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 663
    throw v0

    .line 639
    :cond_70
    :try_start_70
    const-string v5, "LauncherBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "empty intent on appwidget: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    move-object v1, v4

    goto :goto_59

    .line 646
    :cond_87
    if-eqz v0, :cond_36

    .line 648
    const/4 v0, 0x5

    if-ge v2, v0, :cond_a0

    .line 650
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 651
    invoke-direct {p0, v7, v6, v0}, Lcom/android/launcher3/LauncherBackupHelper;->packWidget(ILandroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/backup/BackupProtos$Widget;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/android/launcher3/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 654
    goto :goto_36

    .line 657
    :cond_a0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->dataChanged()V
    :try_end_a3
    .catchall {:try_start_70 .. :try_end_a3} :catchall_6b

    goto :goto_36
.end method

.method private checkKey(Lcom/android/launcher3/backup/BackupProtos$Key;)J
    .registers 8

    .prologue
    const-wide/32 v4, 0xffff

    .line 744
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 745
    iget v1, p1, Lcom/android/launcher3/backup/BackupProtos$Key;->type:I

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 746
    iget-wide v2, p1, Lcom/android/launcher3/backup/BackupProtos$Key;->id:J

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 747
    iget-wide v2, p1, Lcom/android/launcher3/backup/BackupProtos$Key;->id:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 748
    iget-object v1, p1, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 749
    iget-object v1, p1, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 751
    :cond_2f
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private dataChanged()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_d

    .line 169
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 171
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 172
    return-void
.end method

.method private getAppVersion()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 399
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_14} :catch_15

    .line 402
    :goto_14
    return v0

    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method private getCurrentStateJournal()Lcom/android/launcher3/backup/BackupProtos$Journal;
    .registers 5

    .prologue
    .line 388
    new-instance v1, Lcom/android/launcher3/backup/BackupProtos$Journal;

    invoke-direct {v1}, Lcom/android/launcher3/backup/BackupProtos$Journal;-><init>()V

    .line 389
    iget-wide v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mLastBackupRestoreTime:J

    iput-wide v2, v1, Lcom/android/launcher3/backup/BackupProtos$Journal;->t:J

    .line 390
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher3/backup/BackupProtos$Key;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/backup/BackupProtos$Key;

    iput-object v0, v1, Lcom/android/launcher3/backup/BackupProtos$Journal;->key:[Lcom/android/launcher3/backup/BackupProtos$Key;

    .line 391
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->getAppVersion()I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/backup/BackupProtos$Journal;->appVersion:I

    .line 392
    const/4 v0, 0x3

    iput v0, v1, Lcom/android/launcher3/backup/BackupProtos$Journal;->backupVersion:I

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    iput-object v0, v1, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 394
    return-object v1
.end method

.method private getKey(IJ)Lcom/android/launcher3/backup/BackupProtos$Key;
    .registers 8

    .prologue
    .line 701
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Key;-><init>()V

    .line 702
    iput p1, v0, Lcom/android/launcher3/backup/BackupProtos$Key;->type:I

    .line 703
    iput-wide p2, v0, Lcom/android/launcher3/backup/BackupProtos$Key;->id:J

    .line 704
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherBackupHelper;->checkKey(Lcom/android/launcher3/backup/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/backup/BackupProtos$Key;->checksum:J

    .line 705
    return-object v0
.end method

.method private getKey(ILjava/lang/String;)Lcom/android/launcher3/backup/BackupProtos$Key;
    .registers 7

    .prologue
    .line 714
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Key;-><init>()V

    .line 715
    iput p1, v0, Lcom/android/launcher3/backup/BackupProtos$Key;->type:I

    .line 716
    iput-object p2, v0, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    .line 717
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherBackupHelper;->checkKey(Lcom/android/launcher3/backup/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/backup/BackupProtos$Key;->checksum:J

    .line 718
    return-object v0
.end method

.method private getUserSelectionArg()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "profileId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 1151
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDeviceProfileData(Lcom/android/launcher3/InvariantDeviceProfile;)Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;
    .registers 4

    .prologue
    .line 407
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;-><init>()V

    .line 408
    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    int-to-float v1, v1

    iput v1, v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    .line 409
    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    int-to-float v1, v1

    iput v1, v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    .line 410
    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    iput v1, v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    .line 411
    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    iput v1, v0, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    .line 412
    return-object v0
.end method

.method private isBackupCompatible(Lcom/android/launcher3/backup/BackupProtos$Journal;)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 277
    iget-object v3, p0, Lcom/android/launcher3/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 278
    iget-object v4, p1, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 280
    if-eqz v4, :cond_f

    iget v0, v4, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_10

    .line 294
    :cond_f
    :goto_f
    return v1

    .line 286
    :cond_10
    iget v0, v3, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    int-to-float v0, v0

    iget v5, v4, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3d

    move v0, v1

    .line 289
    :goto_1a
    iget v5, v3, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    iget v6, v4, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_29

    .line 290
    iget v5, v3, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    iget v6, v4, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    if-ne v5, v6, :cond_29

    move v0, v1

    .line 294
    :cond_29
    if-eqz v0, :cond_3b

    iget v0, v3, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    iget v5, v4, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3b

    .line 295
    iget v0, v3, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    iget v3, v4, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    .line 294
    cmpl-float v0, v0, v3

    if-gez v0, :cond_f

    :cond_3b
    move v1, v2

    goto :goto_f

    :cond_3d
    move v0, v2

    goto :goto_1a
.end method

.method private isReplaceableHotseatItem(Lcom/android/launcher3/backup/BackupProtos$Favorite;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 759
    iget v1, p1, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    const/16 v2, -0x65

    if-ne v1, v2, :cond_14

    .line 760
    iget-object v1, p1, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 761
    iget v1, p1, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    if-eqz v1, :cond_13

    .line 762
    iget v1, p1, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    if-ne v1, v0, :cond_14

    .line 759
    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private keyToBackupKey(Lcom/android/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 723
    invoke-static {p1}, Lcom/android/launcher3/backup/BackupProtos$Key;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launcherIsReady()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1133
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1134
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher3/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1135
    if-nez v0, :cond_16

    move v0, v6

    .line 1146
    :goto_15
    return v0

    .line 1139
    :cond_16
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1141
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_21

    move v0, v6

    .line 1143
    goto :goto_15

    .line 1146
    :cond_21
    const/4 v0, 0x1

    goto :goto_15
.end method

.method private packFavorite(Landroid/database/Cursor;)Lcom/android/launcher3/backup/BackupProtos$Favorite;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x4

    const/4 v2, 0x0

    .line 767
    new-instance v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;

    invoke-direct {v3}, Lcom/android/launcher3/backup/BackupProtos$Favorite;-><init>()V

    .line 768
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->id:J

    .line 769
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    .line 770
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    .line 771
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    .line 772
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    .line 773
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanX:I

    .line 774
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanY:I

    .line 775
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    .line 777
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 779
    iput-object v0, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 781
    :cond_51
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 783
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_121

    .line 785
    const/4 v4, 0x0

    :try_start_5d
    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_60
    .catch Ljava/net/URISyntaxException; {:try_start_5d .. :try_end_60} :catch_ad

    move-result-object v0

    .line 786
    :try_start_61
    const-string v4, "profile"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 787
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;
    :try_end_6d
    .catch Ljava/net/URISyntaxException; {:try_start_61 .. :try_end_6d} :catch_11f

    .line 792
    :goto_6d
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    .line 793
    iget v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    if-ne v4, v7, :cond_b8

    .line 794
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    .line 795
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 796
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 797
    iput-object v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 817
    :cond_8c
    :goto_8c
    invoke-direct {p0, v3}, Lcom/android/launcher3/LauncherBackupHelper;->isReplaceableHotseatItem(Lcom/android/launcher3/backup/BackupProtos$Favorite;)Z

    move-result v4

    if-eqz v4, :cond_fa

    .line 818
    if-eqz v0, :cond_fa

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_fa

    .line 819
    iget-object v4, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 822
    :try_start_a0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_a8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a0 .. :try_end_a8} :catch_eb

    move-result-object v1

    .line 826
    :goto_a9
    if-nez v1, :cond_f4

    move-object v0, v3

    .line 842
    :goto_ac
    return-object v0

    .line 788
    :catch_ad
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    .line 789
    :goto_b0
    const-string v5, "LauncherBackupHelper"

    const-string v6, "Invalid intent"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 799
    :cond_b8
    iget v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8c

    .line 800
    iget v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    if-nez v4, :cond_dd

    .line 801
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 802
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cf

    .line 803
    iput-object v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    .line 805
    :cond_cf
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 806
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_dd

    .line 807
    iput-object v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 811
    :cond_dd
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 812
    if-eqz v4, :cond_8c

    array-length v5, v4

    if-lez v5, :cond_8c

    .line 813
    iput-object v4, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->icon:[B

    goto :goto_8c

    .line 823
    :catch_eb
    move-exception v0

    .line 824
    const-string v5, "LauncherBackupHelper"

    const-string v6, "Target not found"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a9

    :cond_f4
    move v0, v2

    .line 829
    :goto_f5
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mItemTypeMatchers:[Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;

    array-length v2, v2

    if-lt v0, v2, :cond_fc

    :cond_fa
    :goto_fa
    move-object v0, v3

    .line 842
    goto :goto_ac

    .line 830
    :cond_fc
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mItemTypeMatchers:[Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;

    aget-object v2, v2, v0

    if-nez v2, :cond_10f

    .line 831
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mItemTypeMatchers:[Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;

    new-instance v5, Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;

    .line 832
    invoke-static {v0}, Lcom/android/launcher3/CommonAppTypeParser;->getResourceForItemType(I)I

    move-result v6

    invoke-direct {v5, p0, v6}, Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;-><init>(Lcom/android/launcher3/LauncherBackupHelper;I)V

    .line 831
    aput-object v5, v2, v0

    .line 834
    :cond_10f
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mItemTypeMatchers:[Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, v4}, Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;->matches(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 835
    iput v0, v3, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    goto :goto_fa

    .line 829
    :cond_11c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f5

    .line 788
    :catch_11f
    move-exception v4

    goto :goto_b0

    :cond_121
    move-object v0, v1

    goto/16 :goto_6d
.end method

.method private packIcon(ILandroid/graphics/Bitmap;)Lcom/android/launcher3/backup/BackupProtos$Resource;
    .registers 5

    .prologue
    .line 953
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Resource;-><init>()V

    .line 954
    iput p1, v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->dpi:I

    .line 955
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    .line 956
    return-object v0
.end method

.method private packScreen(Landroid/database/Cursor;)Lcom/android/launcher3/backup/BackupProtos$Screen;
    .registers 6

    .prologue
    .line 935
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Screen;-><init>()V

    .line 936
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/backup/BackupProtos$Screen;->id:J

    .line 937
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/backup/BackupProtos$Screen;->rank:I

    .line 938
    return-object v0
.end method

.method private packWidget(ILandroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/backup/BackupProtos$Widget;
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 962
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/launcher3/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v4

    .line 963
    new-instance v5, Lcom/android/launcher3/backup/BackupProtos$Widget;

    invoke-direct {v5}, Lcom/android/launcher3/backup/BackupProtos$Widget;-><init>()V

    .line 964
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    .line 965
    iget-object v0, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v0, v5, Lcom/android/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 966
    iget-object v0, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_6c

    move v0, v1

    :goto_1d
    iput-boolean v0, v5, Lcom/android/launcher3/backup/BackupProtos$Widget;->configure:Z

    .line 967
    iget v0, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->icon:I

    if-eqz v0, :cond_48

    .line 968
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Resource;-><init>()V

    iput-object v0, v5, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    .line 969
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 970
    iget-object v6, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 971
    iget-object v6, v5, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    .line 972
    iget-object v0, v5, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    iput p1, v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->dpi:I

    .line 978
    :cond_48
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v6, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget v7, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    iget v8, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    const/4 v9, 0x0

    .line 977
    invoke-static {v0, v6, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->rectToCell(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;II[I)[I

    move-result-object v6

    .line 979
    iget v0, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6e

    .line 980
    aget v0, v6, v2

    .line 979
    :goto_5f
    iput v0, v5, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanX:I

    .line 981
    iget v0, v4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_69

    .line 982
    aget v3, v6, v1

    .line 981
    :cond_69
    iput v3, v5, Lcom/android/launcher3/backup/BackupProtos$Widget;->minSpanY:I

    .line 984
    return-object v5

    :cond_6c
    move v0, v2

    .line 966
    goto :goto_1d

    :cond_6e
    move v0, v3

    .line 980
    goto :goto_5f
.end method

.method private static readCheckedBytes([BI)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1119
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;-><init>()V

    .line 1120
    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    .line 1121
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 1122
    iget-object v2, v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 1123
    iget-wide v2, v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_25

    .line 1124
    new-instance v0, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string v1, "checksum does not match"

    invoke-direct {v0, v1}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_25
    iget-object v0, v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    return-object v0
.end method

.method private readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/android/launcher3/backup/BackupProtos$Journal;
    .registers 14

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1007
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Journal;-><init>()V

    .line 1008
    if-nez p1, :cond_b

    .line 1067
    :goto_a
    return-object v0

    .line 1011
    :cond_b
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1013
    :try_start_14
    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 1015
    const v1, 0xf4240

    if-ge v5, v1, :cond_2e

    .line 1016
    new-array v3, v5, [B

    move-object v7, v4

    move v8, v6

    move v1, v6

    move-object v2, v3

    .line 1020
    :goto_23
    if-gtz v5, :cond_3b

    .line 1054
    if-nez v8, :cond_2e

    .line 1055
    const-string v1, "LauncherBackupHelper"

    const-string v2, "could not find a valid journal"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_6c
    .catchall {:try_start_14 .. :try_end_2e} :catchall_81

    .line 1062
    :cond_2e
    :try_start_2e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_a

    .line 1063
    :catch_32
    move-exception v1

    .line 1064
    const-string v2, "LauncherBackupHelper"

    const-string v3, "failed to close the journal"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1026
    :cond_3b
    const/4 v3, 0x1

    :try_start_3c
    invoke-virtual {v10, v2, v1, v3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_5f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_81

    move-result v11

    .line 1027
    if-lez v11, :cond_54

    .line 1028
    sub-int v3, v5, v11

    .line 1029
    add-int/2addr v1, v11

    move v5, v3

    move-object v3, v2

    move v2, v1

    .line 1042
    :goto_48
    :try_start_48
    invoke-static {v3, v2}, Lcom/android/launcher3/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_4f
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_48 .. :try_end_4f} :catch_64
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4f} :catch_6c
    .catchall {:try_start_48 .. :try_end_4f} :catchall_81

    move v8, v9

    move v1, v2

    move v5, v6

    move-object v2, v3

    .line 1047
    goto :goto_23

    .line 1031
    :cond_54
    :try_start_54
    const-string v3, "LauncherBackupHelper"

    const-string v5, "unexpected end of file while reading journal."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5b} :catch_5f
    .catchall {:try_start_54 .. :try_end_5b} :catchall_81

    move-object v3, v2

    move v5, v6

    move v2, v1

    .line 1035
    goto :goto_48

    .line 1036
    :catch_5f
    move-exception v2

    move v2, v1

    move-object v3, v4

    move v5, v6

    .line 1037
    goto :goto_48

    .line 1047
    :catch_64
    move-exception v1

    .line 1050
    :try_start_65
    invoke-virtual {v0}, Lcom/android/launcher3/backup/BackupProtos$Journal;->clear()Lcom/android/launcher3/backup/BackupProtos$Journal;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6c
    .catchall {:try_start_65 .. :try_end_68} :catchall_81

    move-object v7, v1

    move v1, v2

    move-object v2, v3

    goto :goto_23

    .line 1058
    :catch_6c
    move-exception v1

    .line 1059
    :try_start_6d
    const-string v2, "LauncherBackupHelper"

    const-string v3, "failed to close the journal"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_81

    .line 1062
    :try_start_74
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_a

    .line 1063
    :catch_78
    move-exception v1

    .line 1064
    const-string v2, "LauncherBackupHelper"

    const-string v3, "failed to close the journal"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1060
    :catchall_81
    move-exception v0

    .line 1062
    :try_start_82
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    .line 1066
    :goto_85
    throw v0

    .line 1063
    :catch_86
    move-exception v1

    .line 1064
    const-string v2, "LauncherBackupHelper"

    const-string v3, "failed to close the journal"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85
.end method

.method private restoreFavorite(Lcom/android/launcher3/backup/BackupProtos$Key;[BI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 461
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/LauncherBackupHelper;->unpackFavorite([BI)Landroid/content/ContentValues;

    move-result-object v1

    .line 462
    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 463
    return-void
.end method

.method private restoreIcon(Lcom/android/launcher3/backup/BackupProtos$Key;[BI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Resource;-><init>()V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher3/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Resource;

    .line 601
    iget-object v1, v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 602
    if-nez v3, :cond_2d

    .line 603
    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to unpack icon for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_2d
    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v2, p1, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget v4, v0, Lcom/android/launcher3/backup/BackupProtos$Resource;->dpi:I

    .line 607
    const-string v5, ""

    iget-wide v6, p0, Lcom/android/launcher3/LauncherBackupHelper;->mUserSerial:J

    .line 606
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/IconCache;->preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;J)V

    .line 608
    return-void
.end method

.method private restoreScreen(Lcom/android/launcher3/backup/BackupProtos$Key;[BI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 511
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/LauncherBackupHelper;->unpackScreen([BI)Landroid/content/ContentValues;

    move-result-object v1

    .line 512
    sget-object v2, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 513
    return-void
.end method

.method private restoreWidget(Lcom/android/launcher3/backup/BackupProtos$Key;[BI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Widget;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Widget;-><init>()V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher3/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Widget;

    .line 681
    iget-object v1, v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    iget-object v1, v1, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    if-eqz v1, :cond_37

    .line 683
    iget-object v1, v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    iget-object v1, v1, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    iget-object v3, v3, Lcom/android/launcher3/backup/BackupProtos$Resource;->data:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 684
    if-nez v3, :cond_38

    .line 685
    const-string v0, "LauncherBackupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to unpack widget icon for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/launcher3/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_37
    :goto_37
    return-void

    .line 687
    :cond_38
    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v2, v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 688
    iget-object v4, v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->icon:Lcom/android/launcher3/backup/BackupProtos$Resource;

    iget v4, v4, Lcom/android/launcher3/backup/BackupProtos$Resource;->dpi:I

    iget-object v5, v0, Lcom/android/launcher3/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/launcher3/LauncherBackupHelper;->mUserSerial:J

    .line 687
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/IconCache;->preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;J)V

    goto :goto_37
.end method

.method private unpackFavorite([BI)Landroid/content/ContentValues;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 848
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Favorite;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;

    .line 850
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 851
    const-string v2, "_id"

    iget-wide v4, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 852
    const-string v2, "screen"

    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v2, "container"

    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string v2, "cellX"

    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    const-string v2, "cellY"

    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v2, "spanX"

    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string v2, "spanY"

    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    iget v2, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    if-ne v2, v7, :cond_88

    .line 860
    const-string v2, "iconType"

    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    iget v2, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconType:I

    if-nez v2, :cond_81

    .line 862
    const-string v2, "iconPackage"

    iget-object v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v2, "iconResource"

    iget-object v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_81
    const-string v2, "icon"

    iget-object v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->icon:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 868
    :cond_88
    iget-object v2, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_114

    .line 869
    const-string v2, "title"

    iget-object v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :goto_97
    iget-object v2, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 874
    const-string v2, "intent"

    iget-object v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_a6
    const-string v2, "itemType"

    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    .line 880
    iget-object v3, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v2

    .line 881
    const-string v4, "profileId"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 883
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 885
    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->itemType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11d

    .line 886
    iget-object v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_de

    .line 887
    const-string v3, "appWidgetProvider"

    iget-object v4, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_de
    const-string v3, "appWidgetId"

    iget v4, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->appWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string v3, "restored"

    .line 891
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 890
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    iget v4, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_10a

    .line 897
    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    iget v0, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->spanY:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v2, v2, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_188

    .line 898
    :cond_10a
    iput-boolean v6, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoreSuccessful:Z

    .line 899
    new-instance v0, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;

    const-string v1, "Widget not in screen bounds, aborting restore"

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/LauncherBackupHelper;Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_114
    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_97

    .line 903
    :cond_11d
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherBackupHelper;->isReplaceableHotseatItem(Lcom/android/launcher3/backup/BackupProtos$Favorite;)Z

    move-result v3

    if-eqz v3, :cond_162

    .line 904
    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    if-eqz v3, :cond_162

    .line 905
    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    if-ge v3, v8, :cond_162

    .line 906
    const-string v3, "LauncherBackupHelper"

    const-string v4, "Added item type flag"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v3, "restored"

    .line 908
    iget v4, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->targetType:I

    invoke-static {v4}, Lcom/android/launcher3/CommonAppTypeParser;->encodeItemTypeToFlag(I)I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 907
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    :goto_143
    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->container:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_16c

    .line 916
    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    int-to-float v3, v3

    iget v4, v2, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->hotseatCount:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_158

    .line 917
    iget v0, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->screen:I

    iget v2, v2, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    if-ne v0, v2, :cond_188

    .line 918
    :cond_158
    iput-boolean v6, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoreSuccessful:Z

    .line 919
    new-instance v0, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;

    const-string v1, "Item not in hotseat bounds, aborting restore"

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/LauncherBackupHelper;Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_162
    const-string v3, "restored"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_143

    .line 922
    :cond_16c
    iget v3, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellX:I

    int-to-float v3, v3

    iget v4, v2, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopCols:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_17e

    .line 923
    iget v0, v0, Lcom/android/launcher3/backup/BackupProtos$Favorite;->cellY:I

    int-to-float v0, v0

    iget v2, v2, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->desktopRows:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_188

    .line 924
    :cond_17e
    iput-boolean v6, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoreSuccessful:Z

    .line 925
    new-instance v0, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;

    const-string v1, "Item not in desktop bounds, aborting restore"

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/LauncherBackupHelper;Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_188
    return-object v1
.end method

.method private unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 992
    invoke-static {p2, p3}, Lcom/android/launcher3/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 994
    return-object p1
.end method

.method private unpackScreen([BI)Landroid/content/ContentValues;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 944
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$Screen;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Screen;

    .line 945
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 946
    const-string v2, "_id"

    iget-wide v4, v0, Lcom/android/launcher3/backup/BackupProtos$Screen;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 947
    const-string v2, "screenRank"

    iget v0, v0, Lcom/android/launcher3/backup/BackupProtos$Screen;->rank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 948
    return-object v1
.end method

.method private writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B
    .registers 6

    .prologue
    .line 1108
    new-instance v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;

    invoke-direct {v0}, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;-><init>()V

    .line 1109
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    .line 1110
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 1111
    iget-object v2, v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 1112
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/backup/BackupProtos$CheckedMessage;->checksum:J

    .line 1113
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method private writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher3/backup/BackupProtos$Journal;)V
    .registers 6

    .prologue
    .line 1096
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1097
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1098
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1099
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1104
    :goto_13
    return-void

    .line 1101
    :catch_14
    move-exception v0

    .line 1102
    const-string v1, "LauncherBackupHelper"

    const-string v2, "failed to write backup journal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method private writeRowToBackup(Lcom/android/launcher3/backup/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher3/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    .line 1073
    return-void
.end method

.method private writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1077
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 1078
    array-length v1, v0

    invoke-virtual {p3, p1, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1079
    array-length v1, v0

    invoke-virtual {p3, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    .line 1082
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherBackupHelper;->readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/android/launcher3/backup/BackupProtos$Journal;

    move-result-object v3

    .line 202
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->launcherIsReady()Z

    move-result v0

    if-nez v0, :cond_13

    .line 203
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->dataChanged()V

    .line 205
    invoke-direct {p0, p3, v3}, Lcom/android/launcher3/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher3/backup/BackupProtos$Journal;)V

    .line 270
    :goto_12
    return-void

    .line 209
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    if-nez v0, :cond_2f

    .line 210
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 212
    iget-object v4, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p0, v4}, Lcom/android/launcher3/LauncherBackupHelper;->initDeviceProfileData(Lcom/android/launcher3/InvariantDeviceProfile;)Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 213
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 216
    :cond_2f
    const-string v0, "LauncherBackupHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lastBackupTime = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v3, Lcom/android/launcher3/backup/BackupProtos$Journal;->t:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    invoke-direct {p0, v3}, Lcom/android/launcher3/LauncherBackupHelper;->applyJournal(Lcom/android/launcher3/backup/BackupProtos$Journal;)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 223
    iput-boolean v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    .line 225
    :try_start_53
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherBackupHelper;->backupFavorites(Landroid/app/backup/BackupDataOutput;)V

    .line 226
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherBackupHelper;->backupScreens(Landroid/app/backup/BackupDataOutput;)V

    .line 227
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherBackupHelper;->backupIcons(Landroid/app/backup/BackupDataOutput;)V

    .line 228
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherBackupHelper;->backupWidgets(Landroid/app/backup/BackupDataOutput;)V

    .line 231
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_db

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 245
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-nez v0, :cond_b0

    .line 247
    iget-object v0, v3, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    if-eqz v0, :cond_e9

    .line 248
    iget-object v0, v3, Lcom/android/launcher3/backup/BackupProtos$Journal;->profile:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    invoke-static {v0}, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 249
    iget-object v6, p0, Lcom/android/launcher3/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    invoke-static {v6}, Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    .line 248
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 249
    if-eqz v0, :cond_e9

    .line 250
    iget v0, v3, Lcom/android/launcher3/backup/BackupProtos$Journal;->backupVersion:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_e9

    .line 251
    iget v0, v3, Lcom/android/launcher3/backup/BackupProtos$Journal;->appVersion:I

    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->getAppVersion()I

    move-result v3

    if-ne v0, v3, :cond_e9

    move v0, v1

    .line 247
    :goto_ae
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    .line 254
    :cond_b0
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-eqz v0, :cond_bf

    .line 255
    iput-wide v4, p0, Lcom/android/launcher3/LauncherBackupHelper;->mLastBackupRestoreTime:J

    .line 260
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->getCurrentStateJournal()Lcom/android/launcher3/backup/BackupProtos$Journal;

    move-result-object v0

    .line 261
    const-string v1, "#"

    invoke-direct {p0, v1, v0, p2}, Lcom/android/launcher3/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_bf} :catch_d2

    .line 269
    :cond_bf
    :goto_bf
    invoke-virtual {p0, p3}, Lcom/android/launcher3/LauncherBackupHelper;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_12

    .line 232
    :cond_c4
    :try_start_c4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Key;

    .line 233
    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d1} :catch_d2

    goto :goto_6a

    .line 265
    :catch_d2
    move-exception v0

    .line 266
    const-string v1, "LauncherBackupHelper"

    const-string v2, "launcher backup has failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bf

    .line 238
    :cond_db
    :try_start_db
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    const/4 v7, -0x1

    invoke-virtual {p2, v0, v7}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBackupDataWasUpdated:Z
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e8} :catch_d2

    goto :goto_7b

    :cond_e9
    move v0, v2

    .line 251
    goto :goto_ae
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 6

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoreSuccessful:Z

    if-nez v0, :cond_5

    .line 375
    :cond_4
    :goto_4
    return-void

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    if-nez v0, :cond_25

    .line 314
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherBackupHelper;->initDeviceProfileData(Lcom/android/launcher3/InvariantDeviceProfile;)Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/backup/BackupProtos$DeviceProfieData;

    .line 316
    new-instance v0, Lcom/android/launcher3/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/IconCache;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 319
    :cond_25
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBuffer:[B

    array-length v1, v1

    if-ge v1, v0, :cond_32

    .line 321
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBuffer:[B

    .line 324
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/backup/BackupDataInputStream;->read([BII)I

    .line 326
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 328
    const-string v2, "#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 330
    iget-object v1, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_84

    .line 332
    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/backup/BackupProtos$Key;

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/backup/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " received after "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoreSuccessful:Z
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_7a} :catch_7b

    goto :goto_4

    .line 372
    :catch_7b
    move-exception v0

    .line 373
    const-string v1, "LauncherBackupHelper"

    const-string v2, "ignoring unparsable backup entry"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 337
    :cond_84
    :try_start_84
    new-instance v1, Lcom/android/launcher3/backup/BackupProtos$Journal;

    invoke-direct {v1}, Lcom/android/launcher3/backup/BackupProtos$Journal;-><init>()V

    .line 338
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBuffer:[B

    invoke-static {v2, v0}, Lcom/android/launcher3/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 339
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherBackupHelper;->applyJournal(Lcom/android/launcher3/backup/BackupProtos$Journal;)V

    .line 340
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherBackupHelper;->isBackupCompatible(Lcom/android/launcher3/backup/BackupProtos$Journal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->restoreSuccessful:Z

    goto/16 :goto_4

    .line 344
    :cond_9d
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    :cond_ad
    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherBackupHelper;->backupKeyToKey(Ljava/lang/String;)Lcom/android/launcher3/backup/BackupProtos$Key;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget v2, v1, Lcom/android/launcher3/backup/BackupProtos$Key;->type:I

    packed-switch v2, :pswitch_data_f4

    .line 368
    const-string v0, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown restore entity type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/launcher3/backup/BackupProtos$Key;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 352
    :pswitch_d8
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/LauncherBackupHelper;->restoreFavorite(Lcom/android/launcher3/backup/BackupProtos$Key;[BI)V

    goto/16 :goto_4

    .line 356
    :pswitch_df
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/LauncherBackupHelper;->restoreScreen(Lcom/android/launcher3/backup/BackupProtos$Key;[BI)V

    goto/16 :goto_4

    .line 360
    :pswitch_e6
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/LauncherBackupHelper;->restoreIcon(Lcom/android/launcher3/backup/BackupProtos$Key;[BI)V

    goto/16 :goto_4

    .line 364
    :pswitch_ed
    iget-object v2, p0, Lcom/android/launcher3/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/LauncherBackupHelper;->restoreWidget(Lcom/android/launcher3/backup/BackupProtos$Key;[BI)V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_f2} :catch_7b

    goto/16 :goto_4

    .line 350
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_df
        :pswitch_e6
        :pswitch_ed
    .end packed-switch
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/launcher3/LauncherBackupHelper;->getCurrentStateJournal()Lcom/android/launcher3/backup/BackupProtos$Journal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher3/backup/BackupProtos$Journal;)V

    .line 385
    return-void
.end method
