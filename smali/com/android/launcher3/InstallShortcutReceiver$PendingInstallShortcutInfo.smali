.class public Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingInstallShortcutInfo"
.end annotation


# instance fields
.field final activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

.field final data:Landroid/content/Intent;

.field final label:Ljava/lang/String;

.field final launchIntent:Landroid/content/Intent;

.field final mContext:Landroid/content/Context;

.field final user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 263
    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 265
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 266
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 267
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 269
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 276
    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 277
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    .line 278
    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/AppInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 281
    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 282
    return-void
.end method

.method private static final object_aroundBody0(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lorg/json/JSONStringer;)Lorg/json/JSONStringer;
    .registers 3

    .prologue
    .line 290
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method private static final object_aroundBody1$advice(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lorg/json/JSONStringer;Lcom/lge/launcher3/InstallShortcutReceiverAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lorg/json/JSONStringer;
    .registers 8

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->object_aroundBody0(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lorg/json/JSONStringer;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 27
    :try_start_4
    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_11} :catch_12

    .line 30
    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static final object_aroundBody2(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lorg/json/JSONStringer;)Lorg/json/JSONStringer;
    .registers 3

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method private static final object_aroundBody3$advice(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lorg/json/JSONStringer;Lcom/lge/launcher3/InstallShortcutReceiverAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lorg/json/JSONStringer;
    .registers 8

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->object_aroundBody2(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lorg/json/JSONStringer;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 27
    :try_start_4
    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_11} :catch_12

    .line 30
    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method


# virtual methods
.method public encodeToString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    if-eqz v0, :cond_65

    .line 289
    :try_start_5
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-static {}, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->aspectOf()Lcom/lge/launcher3/InstallShortcutReceiverAspect;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->object_aroundBody1$advice(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lorg/json/JSONStringer;Lcom/lge/launcher3/InstallShortcutReceiverAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 291
    const-string v1, "intent.launch"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 292
    const-string v1, "isAppShortcut"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v0

    .line 293
    const-string v1, "userHandle"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 294
    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v4

    .line 293
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4c} :catch_4e

    move-result-object v0

    .line 339
    :goto_4d
    return-object v0

    .line 296
    :catch_4e
    move-exception v0

    .line 297
    const-string v1, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when adding shortcut: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 298
    goto :goto_4d

    .line 302
    :cond_65
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_fa

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/InstallShortcutReceiver;->ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 316
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    .line 320
    :try_start_96
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    invoke-static {}, Lcom/lge/launcher3/InstallShortcutReceiverAspect;->aspectOf()Lcom/lge/launcher3/InstallShortcutReceiverAspect;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->object_aroundBody3$advice(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lorg/json/JSONStringer;Lcom/lge/launcher3/InstallShortcutReceiverAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 322
    const-string v5, "intent.launch"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 323
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 324
    if-eqz v0, :cond_13f

    .line 325
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 326
    const-string v4, "icon"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 328
    const/4 v4, 0x0

    array-length v5, v0

    const/4 v6, 0x0

    .line 327
    invoke-static {v0, v4, v5, v6}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {v3, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 330
    :goto_d6
    if-eqz v1, :cond_f0

    .line 331
    const-string v3, "iconResource"

    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    iget-object v3, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 332
    const-string v3, "iconResourcePackage"

    invoke-virtual {v0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 333
    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 335
    :cond_f0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_f7
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_f7} :catch_127

    move-result-object v0

    goto/16 :goto_4d

    .line 304
    :cond_fa
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 308
    const/high16 v1, 0x10200000

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_74

    .line 336
    :catch_127
    move-exception v0

    .line 337
    const-string v1, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when adding shortcut: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 339
    goto/16 :goto_4d

    :cond_13f
    move-object v0, v3

    goto :goto_d6
.end method

.method public getShortcutInfo()Lcom/android/launcher3/ShortcutInfo;
    .registers 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    if-eqz v0, :cond_d

    .line 344
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher3/ShortcutInfo;->fromActivityInfo(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    .line 346
    :goto_c
    return-object v0

    :cond_d
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    goto :goto_c
.end method

.method public getTargetPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 352
    if-nez v0, :cond_11

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 356
    :cond_11
    :goto_11
    return-object v0

    .line 354
    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public isLuncherActivity()Z
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
