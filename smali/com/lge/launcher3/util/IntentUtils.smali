.class public Lcom/lge/launcher3/util/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTargetPackage(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18
    if-nez p0, :cond_5

    move-object v0, v1

    .line 31
    :cond_4
    :goto_4
    return-object v0

    .line 22
    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 23
    if-nez v0, :cond_4

    .line 24
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 25
    if-nez v0, :cond_13

    move-object v0, v1

    .line 26
    goto :goto_4

    .line 29
    :cond_13
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static hasCategoryLauncher(Landroid/content/Intent;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p0, :cond_4

    .line 44
    :cond_3
    :goto_3
    return v0

    .line 43
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_3

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method
