.class public Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;
.super Ljava/lang/Object;
.source "SBNotiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;
    }
.end annotation


# static fields
.field private static sNotiInstance:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

.field private mNotiInterface:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;

.field private mNotiReceiver:Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->sNotiInstance:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiReceiver:Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;

    .line 35
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$1;-><init>(Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;)Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiInterface:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;
    .registers 3

    .prologue
    .line 49
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->sNotiInstance:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    if-nez v0, :cond_f

    .line 50
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->sNotiInstance:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    .line 52
    :cond_f
    sget-object v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->sNotiInstance:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    return-object v0
.end method


# virtual methods
.method public getNotiCount()I
    .registers 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    if-nez v0, :cond_6

    .line 79
    const/4 v1, 0x0

    .line 89
    :cond_5
    return v1

    .line 82
    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->getNotiCount()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    invoke-virtual {v1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->getNotiList()Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    .line 85
    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    iget-object v0, v0, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mComponentName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->isEnableNoti(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 86
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_17
.end method

.method public registerNotiReceiver(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;

    invoke-direct {v0}, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiReceiver:Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;

    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->registerObserver(Landroid/content/Context;)V

    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiReceiver:Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->registerNotiReceiver(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public removeOnceInDB(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    if-nez v0, :cond_5

    .line 115
    :goto_4
    return-void

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->removeInfo(Landroid/content/Context;Lcom/lge/launcher3/smartbulletin/info/SBAppWidgetProviderInfo;)V

    goto :goto_4
.end method

.method public setSBNotiInterface(Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiInterface:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager$ISBNotiPanel;

    .line 33
    return-void
.end method

.method public unregisterNotiReceiver(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiReceiver:Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;

    if-eqz v0, :cond_c

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiReceiver:Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;->unregisterNotiReceiver(Landroid/content/Context;)V

    .line 68
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiReceiver:Lcom/lge/launcher3/smartbulletin/view/SBNotiReceiver;

    .line 70
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    if-eqz v0, :cond_17

    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->unregisterObserver(Landroid/content/Context;)V

    .line 72
    iput-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    .line 74
    :cond_17
    sput-object v1, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->sNotiInstance:Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;

    .line 75
    return-void
.end method

.method public updateProviderLayout(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)V
    .registers 9

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    if-nez v0, :cond_5

    .line 107
    :cond_4
    return-void

    .line 97
    :cond_5
    invoke-virtual {p1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildCount()I

    move-result v3

    .line 98
    const/4 v0, 0x0

    move v2, v0

    :goto_b
    if-ge v2, v3, :cond_4

    .line 99
    invoke-virtual {p1, v2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 100
    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->removeAllBadge()V

    .line 101
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    invoke-virtual {v1}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->getNotiList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 98
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    .line 101
    :cond_2a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;

    .line 102
    iget-object v5, p0, Lcom/lge/launcher3/smartbulletin/view/SBNotiManager;->mNotiDB:Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;

    iget-object v6, v1, Lcom/lge/launcher3/smartbulletin/view/SBNoti;->mComponentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lge/launcher3/smartbulletin/view/SBNotiDB;->isEnableNoti(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 103
    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->addBadge(Lcom/lge/launcher3/smartbulletin/view/SBNoti;)V

    goto :goto_20
.end method
