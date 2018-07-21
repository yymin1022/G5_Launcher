.class public Lcom/lge/launcher3/receiver/TPhoneModeObserver;
.super Landroid/database/ContentObserver;
.source "TPhoneModeObserver.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPms:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .prologue
    .line 22
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mPms:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 25
    iget-object v0, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mPms:Ljava/lang/String;

    .line 27
    :cond_1b
    return-void
.end method

.method private UpdateTPhoneMode()V
    .registers 5

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_TPHONEMODE:Lcom/lge/launcher3/config/IntentConst$Action;

    iget-object v2, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mPms:Ljava/lang/String;

    .line 54
    const/4 v3, 0x2

    .line 53
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 55
    const-string v2, "modeAfter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    iget-object v2, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    sget-object v0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onChange TPhoneModeObserver, modeAfter = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 48
    invoke-direct {p0}, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->UpdateTPhoneMode()V

    .line 49
    return-void
.end method

.method public registerObserver(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mPms:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 32
    iget-object v1, p0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->mPms:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 33
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    sget-object v0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register TPhoneModeObserver("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->UpdateTPhoneMode()V

    .line 37
    :cond_33
    return-void
.end method

.method public unregisterObserver(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 42
    sget-object v0, Lcom/lge/launcher3/receiver/TPhoneModeObserver;->TAG:Ljava/lang/String;

    const-string v1, "unregister TPhoneModeObserver"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
