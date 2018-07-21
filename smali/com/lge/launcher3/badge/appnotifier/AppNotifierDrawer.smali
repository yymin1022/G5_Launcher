.class public Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
.super Ljava/lang/Object;
.source "AppNotifierDrawer.java"


# static fields
.field public static final NULL:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    new-instance v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer$1;

    invoke-direct {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer$1;-><init>()V

    sput-object v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->NULL:Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    .line 18
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getAppNotifierMaxCountString(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    sget v1, Lcom/lge/launcher3/badge/appnotifier/AppNotifierConstant;->DEFAULT_MAX_NUMBER:I

    if-le p0, v1, :cond_26

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/lge/launcher3/badge/appnotifier/AppNotifierConstant;->DEFAULT_MAX_NUMBER:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_21
.end method


# virtual methods
.method public createBadgeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5

    .prologue
    .line 28
    if-lez p2, :cond_10

    .line 29
    invoke-static {p2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;->getAppNotifierMaxCountString(I)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;

    invoke-direct {v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierBadgeDrawable$Builder;->build(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 32
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isRegistered()Z
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
