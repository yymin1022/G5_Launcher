.class public Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;
.super Landroid/widget/RemoteViews;
.source "MyRemoteViews.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LgeRemoteViews"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private getCustomContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->mContext:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 54
    const-class v0, Landroid/widget/RemoteViews;

    .line 55
    const-string v1, "mApplication"

    .line 54
    invoke-static {v0, p0, v1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 58
    const/4 v1, 0x3

    .line 57
    :try_start_f
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->mContext:Landroid/content/Context;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_18

    .line 63
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->mContext:Landroid/content/Context;

    return-object v0

    .line 60
    :catch_18
    move-exception v0

    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->mContext:Landroid/content/Context;

    goto :goto_15
.end method

.method public static getLgeRemoteViewsFromRemoteViews(Landroid/widget/RemoteViews;)Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 27
    new-instance v1, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;

    invoke-direct {v1, v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 29
    return-object v1
.end method

.method private static getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_4b

    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :catch_d
    move-exception v0

    .line 74
    const-string v1, "LgeRemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoSuchFieldException, getPrivateField failed, field = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catch_2c
    move-exception v0

    .line 77
    const-string v1, "LgeRemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException, getPrivateField failed, field = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :catch_4b
    move-exception v0

    .line 80
    const-string v1, "LgeRemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalAccessException, getPrivateField failed, field = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->getCustomContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .registers 5

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->getCustomContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->getCustomContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyRemoteViews;->getCustomContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 50
    return-void
.end method
