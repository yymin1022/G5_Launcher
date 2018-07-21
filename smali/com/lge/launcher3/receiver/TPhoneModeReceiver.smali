.class public Lcom/lge/launcher3/receiver/TPhoneModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TPhoneModeReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    return-void
.end method

.method private moveItemToLastPos(Landroid/content/Context;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ItemInfo;)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 189
    const-wide/16 v0, -0x64

    iput-wide v0, p2, Lcom/android/launcher3/ShortcutInfo;->container:J

    .line 191
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 190
    invoke-static {p1, v0, v6}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 193
    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_ROWS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 192
    invoke-static {p1, v1, v6}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v1

    .line 195
    iget-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iget-wide v4, p3, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4b

    .line 196
    iget v2, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v3, p3, Lcom/android/launcher3/ItemInfo;->cellX:I

    if-ne v2, v3, :cond_4b

    .line 197
    iget v2, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v3, p3, Lcom/android/launcher3/ItemInfo;->cellY:I

    if-ne v2, v3, :cond_4b

    .line 198
    sget-object v0, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is the last item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_3d
    :goto_3d
    iget-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 225
    iget v6, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    move-object v0, p1

    move-object v1, p2

    .line 224
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 226
    return-void

    .line 199
    :cond_4b
    iget v2, p3, Lcom/android/launcher3/ItemInfo;->cellY:I

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_73

    .line 200
    iget v1, p3, Lcom/android/launcher3/ItemInfo;->cellX:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_66

    .line 201
    iget-wide v0, p3, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 202
    iget v0, p3, Lcom/android/launcher3/ItemInfo;->cellX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 203
    iget v0, p3, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    goto :goto_3d

    .line 205
    :cond_66
    iget-wide v0, p3, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 206
    iput v6, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 207
    iget v0, p3, Lcom/android/launcher3/ItemInfo;->cellY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    goto :goto_3d

    .line 209
    :cond_73
    iget v2, p3, Lcom/android/launcher3/ItemInfo;->cellY:I

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_3d

    .line 210
    iget v1, p3, Lcom/android/launcher3/ItemInfo;->cellX:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_8e

    .line 211
    iget-wide v0, p3, Lcom/android/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 212
    iget v0, p3, Lcom/android/launcher3/ItemInfo;->cellX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 213
    iget v0, p3, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    goto :goto_3d

    .line 215
    :cond_8e
    invoke-static {p1}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 217
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 219
    iput-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 220
    iput v6, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 221
    iput v6, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    goto :goto_3d
.end method

.method private swapTPhoneModeIcon(Landroid/content/Context;ILcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)Z
    .registers 15

    .prologue
    const/4 v6, 0x1

    const-wide/16 v8, -0x65

    const/4 v0, 0x0

    .line 99
    if-eqz p3, :cond_8

    if-nez p4, :cond_23

    .line 100
    :cond_8
    sget-object v1, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "modeAfter = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", illegal parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_22
    return v0

    .line 104
    :cond_23
    if-nez p2, :cond_72

    .line 105
    sget-object v1, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    const-string v2, "modeAfter = SKT_PHONE_MODE_OEM"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p3}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getParentFolder(Lcom/android/launcher3/ShortcutInfo;)Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_dc

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->container:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_dc

    .line 112
    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v6

    .line 115
    :goto_3f
    iget-wide v2, p4, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_4d

    .line 116
    iget-wide v2, p3, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_68

    .line 117
    if-nez v1, :cond_68

    .line 118
    :cond_4d
    sget-object v1, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "modeAfter = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", swapTPhoneModeIcon is not processed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    .line 121
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->updateDBTPhoneModeIcon(Landroid/content/Context;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;II)V

    move v0, v6

    .line 122
    goto :goto_22

    .line 123
    :cond_72
    if-ne p2, v6, :cond_c3

    .line 124
    sget-object v1, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    const-string v2, "modeAfter = SKT_PHONE_MODE_T_PHONE"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p4}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getParentFolder(Lcom/android/launcher3/ShortcutInfo;)Lcom/android/launcher3/FolderInfo;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_d9

    iget-wide v2, v1, Lcom/android/launcher3/FolderInfo;->container:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_d9

    .line 131
    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v6

    .line 134
    :goto_8e
    iget-wide v2, p3, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_9c

    .line 135
    iget-wide v2, p4, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_b8

    if-nez v1, :cond_b8

    .line 136
    :cond_9c
    sget-object v1, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "modeAfter = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", swapTPhoneModeIcon is not processed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_b8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move v4, p2

    .line 139
    invoke-direct/range {v0 .. v5}, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->updateDBTPhoneModeIcon(Landroid/content/Context;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;II)V

    move v0, v6

    .line 140
    goto/16 :goto_22

    .line 142
    :cond_c3
    sget-object v1, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "modeAfter = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_d9
    move v5, v0

    move v1, v0

    goto :goto_8e

    :cond_dc
    move v5, v0

    move v1, v0

    goto/16 :goto_3f
.end method

.method private updateDBTPhoneModeIcon(Landroid/content/Context;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;II)V
    .registers 16

    .prologue
    .line 149
    new-instance v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v1}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 150
    invoke-static {v1, p3}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$copyFrom(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)V

    .line 151
    iget-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->container:J

    iput-wide v2, v1, Lcom/android/launcher3/ShortcutInfo;->container:J

    .line 152
    iget-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iput-wide v2, v1, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 153
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iput v0, v1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 154
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iput v0, v1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 155
    iput p5, v1, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 157
    new-instance v8, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v8}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 158
    invoke-static {v8, p2}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$copyFrom(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)V

    .line 159
    iget-wide v2, p3, Lcom/android/launcher3/ShortcutInfo;->container:J

    iput-wide v2, v8, Lcom/android/launcher3/ShortcutInfo;->container:J

    .line 160
    iget-wide v2, p3, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iput-wide v2, v8, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 161
    iget v0, p3, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iput v0, v8, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 162
    iget v0, p3, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iput v0, v8, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 164
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getLastItemInWorkspace()Lcom/android/launcher3/ItemInfo;

    move-result-object v9

    .line 165
    if-nez v9, :cond_39

    .line 186
    :cond_38
    :goto_38
    return-void

    .line 169
    :cond_39
    invoke-static {p1, p3}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 170
    invoke-static {p1, p2}, Lcom/android/launcher3/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 171
    iget-wide v2, v1, Lcom/android/launcher3/ShortcutInfo;->container:J

    iget-wide v4, v1, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 172
    iget v6, v1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    move-object v0, p1

    .line 171
    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    .line 174
    if-nez p4, :cond_51

    .line 175
    invoke-direct {p0, p1, v8, v9}, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->moveItemToLastPos(Landroid/content/Context;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ItemInfo;)V

    goto :goto_38

    .line 176
    :cond_51
    const/4 v0, 0x1

    if-ne p4, v0, :cond_38

    .line 177
    const v0, 0x7f0f00b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherModelItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherModelItds$com_android_launcher3_LauncherModel$getLGFolderInWorkspace(Ljava/lang/String;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    .line 179
    if-nez v0, :cond_67

    .line 180
    invoke-direct {p0, p1, v8, v9}, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->moveItemToLastPos(Landroid/content/Context;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ItemInfo;)V

    goto :goto_38

    .line 182
    :cond_67
    iget-object v1, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v8, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 183
    iget-wide v2, v0, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, v8

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;JJII)V

    goto :goto_38
.end method


# virtual methods
.method public changeTPhoneMode(Landroid/content/Context;I)V
    .registers 14

    .prologue
    const/4 v0, 0x0

    .line 59
    new-instance v4, Landroid/content/ComponentName;

    const-string v1, "com.skt.prod.dialer"

    .line 60
    const-string v2, "com.skt.prod.dialer.activities.main.MainActivity"

    .line 59
    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v5, Landroid/content/ComponentName;

    const-string v1, "com.skt.prod.phonebook"

    .line 62
    const-string v2, "com.skt.prod.phonebook.activity.main.MainActivity"

    .line 61
    invoke-direct {v5, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v6, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    .line 64
    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    .line 63
    invoke-direct {v6, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->clone()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v0

    move-object v3, v0

    :cond_28
    :goto_28
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_40

    .line 91
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->swapTPhoneModeIcon(Landroid/content/Context;ILcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 92
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    .line 94
    :cond_3f
    return-void

    .line 69
    :cond_40
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 70
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_28

    move-object v1, v0

    .line 71
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 72
    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 73
    if-eqz v8, :cond_28

    .line 77
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 78
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 79
    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$copyFrom(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)V

    move-object v3, v0

    .line 80
    goto :goto_28

    :cond_6f
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 81
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 82
    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$copyFrom(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_28

    .line 83
    :cond_86
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 84
    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ne v0, v8, :cond_28

    .line 85
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 86
    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$copyFrom(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)V

    move-object v2, v0

    goto/16 :goto_28
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 34
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_TPHONEMODE:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 36
    sget-object v0, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    const-string v1, "IntentConst.Action.ACTION_RELOAD_TPHONEMODE is received"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "modeAfter"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->changeTPhoneMode(Landroid/content/Context;I)V

    .line 40
    :cond_28
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 43
    sget-object v0, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Register TPhoneModeReceiver"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_TPHONEMODE:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 50
    sget-object v0, Lcom/lge/launcher3/receiver/TPhoneModeReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Unregister TPhoneModeReceiver"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_7
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_a} :catch_b

    .line 56
    :goto_a
    return-void

    .line 53
    :catch_b
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a
.end method
