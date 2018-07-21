.class public Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;
.super Landroid/database/ContentObserver;
.source "SBContentObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14
    return-void
.end method


# virtual methods
.method public registerObserver(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 24
    return-void
.end method

.method public unregisterObserver(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 19
    return-void
.end method
