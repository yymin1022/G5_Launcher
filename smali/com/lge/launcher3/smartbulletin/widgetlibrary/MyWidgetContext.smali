.class public Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;
.super Landroid/content/ContextWrapper;
.source "MyWidgetContext.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public static isLGEAppWidgetPackage(Ljava/lang/String;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 56
    const-string v1, "com.android.calendar"

    .line 57
    const-string v1, "com.lge."

    .line 59
    if-nez p0, :cond_8

    .line 62
    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "com.lge."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 63
    const-string v1, "com.android.calendar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 62
    :cond_18
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 26
    const/4 v1, 0x3

    .line 27
    new-instance v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;

    invoke-super {p0, p1, v1}, Landroid/content/ContextWrapper;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;-><init>(Landroid/content/Context;)V

    .line 29
    :goto_12
    return-object v0

    :cond_13
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0

    goto :goto_12
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 35
    const/4 v1, 0x3

    .line 36
    new-instance v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;

    invoke-super {p0, p1, v1}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;-><init>(Landroid/content/Context;)V

    .line 38
    :goto_10
    return-object v0

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    goto :goto_10
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    const/4 v1, 0x3

    .line 49
    new-instance v0, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;

    invoke-super {p0, p1, v1, p3}, Landroid/content/ContextWrapper;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;-><init>(Landroid/content/Context;)V

    .line 52
    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyWidgetContext;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    goto :goto_10
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
