.class Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer$1;
.super Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
.source "AppNotifierDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createBadgeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .registers 4

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRegistered()Z
    .registers 2

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method
