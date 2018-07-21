.class public Lcom/android/launcher3/ShortcutInfo;
.super Lcom/android/launcher3/ItemInfo;
.source "ShortcutInfo.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final FLAG_AUTOINTALL_ICON:I = 0x2

.field public static final FLAG_DISABLED_NOT_AVAILABLE:I = 0x2

.field public static final FLAG_DISABLED_QUIET_USER:I = 0x8

.field public static final FLAG_DISABLED_SAFEMODE:I = 0x1

.field public static final FLAG_DISABLED_SUSPENDED:I = 0x4

.field public static final FLAG_INSTALL_SESSION_ACTIVE:I = 0x4

.field public static final FLAG_RESTORED_APP_TYPE:I = 0xf0

.field public static final FLAG_RESTORED_ICON:I = 0x1

.field public static final FLAG_RESTORE_STARTED:I = 0x8


# instance fields
.field private cushionIcon:Landroid/graphics/Bitmap;

.field public customIcon:Z

.field public firstInstallTime:J

.field public flags:I

.field private iconId:Ljava/lang/String;

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field isDisabled:I

.field private mIcon:Landroid/graphics/Bitmap;

.field private mInstallProgress:I

.field promisedIntent:Landroid/content/Intent;

.field status:I

.field private userCustomizedIcon:Landroid/graphics/Bitmap;

.field usingFallbackIcon:Z

.field public usingLowResIcon:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)V

    .line 129
    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 146
    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->flags:I

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/ShortcutInfo;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p2}, Lcom/android/launcher3/ItemInfo;-><init>(Lcom/android/launcher3/ItemInfo;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)V

    .line 129
    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 146
    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->flags:I

    .line 177
    iget-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 179
    iget-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_37

    .line 180
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 184
    :cond_37
    iget-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 185
    iget-boolean v0, p2, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    .line 186
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->flags:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->flags:I

    .line 187
    iget-wide v0, p2, Lcom/android/launcher3/ShortcutInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/launcher3/ShortcutInfo;->firstInstallTime:J

    .line 188
    iget-object v0, p2, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 189
    iget v0, p2, Lcom/android/launcher3/ShortcutInfo;->status:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 190
    return-void
.end method

.method constructor <init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 7

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 169
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 170
    iput-object p3, p0, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 171
    iput-object p4, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 172
    iput-object p5, p0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/AppInfo;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/android/launcher3/ItemInfo;-><init>(Lcom/android/launcher3/ItemInfo;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)V

    .line 129
    iput v2, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 146
    iput v2, p0, Lcom/android/launcher3/ShortcutInfo;->flags:I

    .line 195
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 196
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 197
    iput-boolean v2, p0, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    .line 198
    iget v0, p1, Lcom/android/launcher3/AppInfo;->flags:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->flags:I

    .line 199
    iget-wide v0, p1, Lcom/android/launcher3/AppInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/launcher3/ShortcutInfo;->firstInstallTime:J

    .line 200
    iget v0, p1, Lcom/android/launcher3/AppInfo;->isDisabled:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 201
    return-void
.end method

.method public static ajc$get$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->cushionIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static ajc$get$intent(Lcom/android/launcher3/ShortcutInfo;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public static ajc$get$isDisabled(Lcom/android/launcher3/ShortcutInfo;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    return v0
.end method

.method public static ajc$get$mIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static ajc$get$status(Lcom/android/launcher3/ShortcutInfo;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    return v0
.end method

.method public static ajc$set$cushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ShortcutInfo;->cushionIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static ajc$set$intent(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    return-void
.end method

.method public static ajc$set$isDisabled(Lcom/android/launcher3/ShortcutInfo;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    return-void
.end method

.method public static ajc$set$mIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static ajc$set$status(Lcom/android/launcher3/ShortcutInfo;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    return-void
.end method

.method public static dumpShortcutInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    .line 278
    return-void

    .line 274
    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   title=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, v0, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public static fromActivityInfo(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/ShortcutInfo;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 307
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 310
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 310
    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 312
    iput-boolean v4, v0, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/android/launcher3/AppInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 314
    iput v4, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 315
    invoke-static {p0}, Lcom/android/launcher3/AppInfo;->initFlags(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/ShortcutInfo;->flags:I

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/ShortcutInfo;->firstInstallTime:J

    .line 317
    return-object v0
.end method


# virtual methods
.method public copyFrom(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethod$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$copyFrom(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)V

    return-void
.end method

.method public getCushionIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethod$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$getCushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethod$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$getDisabled(Lcom/android/launcher3/ShortcutInfo;)I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutInfo;->updateIcon(Lcom/android/launcher3/IconCache;)V

    .line 218
    :cond_7
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v0, :cond_19

    .line 219
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/IconCacheItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_IconCacheItds$com_android_launcher3_IconCache$getContext(Lcom/android/launcher3/IconCache;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$getCushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_18
.end method

.method public getIconId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallProgress()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_a
.end method

.method public getUserCustomizedIcon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->userCustomizedIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public hasLargeIcon()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 343
    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    if-gt v1, v0, :cond_a

    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    if-gt v1, v0, :cond_a

    const/4 v0, 0x0

    :cond_a
    return v0
.end method

.method public hasPhotoIcon()Z
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconId:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 337
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconId:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 339
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasStatusFlag(I)Z
    .registers 3

    .prologue
    .line 285
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isDisabled()Z
    .registers 2

    .prologue
    .line 357
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isPromise()Z
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public onAddFromClipData(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ShortcutInfo$onAddFromClipData(Lcom/android/launcher3/ShortcutInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAddToClipData(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ShortcutInfo$onAddToClipData(Lcom/android/launcher3/ShortcutInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 234
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_f
    const-string v2, "title"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    :cond_1e
    :goto_1e
    const-string v0, "intent"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "restored"

    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    if-eqz v0, :cond_4f

    .line 245
    const-string v0, "iconType"

    .line 246
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 245
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p2, v0}, Lcom/android/launcher3/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 261
    :cond_41
    :goto_41
    return-void

    :cond_42
    move-object v0, v1

    .line 236
    goto :goto_f

    .line 240
    :cond_44
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 249
    :cond_4f
    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v0, :cond_58

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p2, v0}, Lcom/android/launcher3/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 252
    :cond_58
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_41

    .line 253
    const-string v0, "iconType"

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 253
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v0, "iconPackage"

    .line 256
    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 255
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "iconResource"

    .line 258
    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 257
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public onResizeItemInDatabase(Landroid/content/ContentValues;)V
    .registers 4

    .prologue
    .line 348
    const-string v0, "iconId"

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getIconId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getUserCustomizedIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getUserCustomizedIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 351
    const-string v1, "userCustomizedIcon"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 353
    :cond_1c
    return-void
.end method

.method public resetCushionIcon()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethod$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$resetCushionIcon(Lcom/android/launcher3/ShortcutInfo;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/launcher3/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 206
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$resetCushionIcon(Lcom/android/launcher3/ShortcutInfo;)V

    .line 207
    return-void
.end method

.method public setIconId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/launcher3/ShortcutInfo;->iconId:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setInstallProgress(I)V
    .registers 3

    .prologue
    .line 298
    iput p1, p0, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    .line 299
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 300
    return-void
.end method

.method public setUserCustomizedIcon(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/launcher3/ShortcutInfo;->userCustomizedIcon:Landroid/graphics/Bitmap;

    .line 333
    return-void
.end method

.method public shouldUseLowResIcon()Z
    .registers 5

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lcom/android/launcher3/ShortcutInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->rank:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShortcutInfo(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/ShortcutInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/ShortcutInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->dropPos:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIcon(Lcom/android/launcher3/IconCache;)V
    .registers 5

    .prologue
    .line 226
    iget v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v0, :cond_13

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    :goto_a
    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->shouldUseLowResIcon()Z

    move-result v2

    .line 227
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;Z)V

    .line 230
    :cond_13
    return-void

    .line 227
    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_a
.end method
