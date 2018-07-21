.class public Lcom/lge/lgewidgetlib/LgeWidgetContext;
.super Landroid/content/ContextWrapper;
.source "LgeWidgetContext.java"


# instance fields
.field mClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeWidgetContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 16
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/lgewidgetlib/LgeWidgetFeature;->isCustomClassLoaderSupportPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 19
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, p0, Lcom/lge/lgewidgetlib/LgeWidgetContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 21
    :cond_25
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

.method public static isLGEWeatherWidgetPackage(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 67
    const-string v0, "com.lge.sizechangable.weather"

    .line 69
    if-nez p0, :cond_6

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_5
    return v0

    :cond_6
    const-string v0, "com.lge.sizechangable.weather"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p1}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 36
    const/4 v1, 0x3

    .line 37
    new-instance v0, Lcom/lge/lgewidgetlib/LgeWidgetContext;

    invoke-super {p0, p1, v1}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/lgewidgetlib/LgeWidgetContext;-><init>(Landroid/content/Context;)V

    .line 39
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
    .line 48
    invoke-static {p1}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    const/4 v1, 0x3

    .line 50
    new-instance v0, Lcom/lge/lgewidgetlib/LgeWidgetContext;

    invoke-super {p0, p1, v1, p3}, Landroid/content/ContextWrapper;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/lgewidgetlib/LgeWidgetContext;-><init>(Landroid/content/Context;)V

    .line 52
    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    goto :goto_10
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeWidgetContext;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeWidgetContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 29
    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_6
.end method
