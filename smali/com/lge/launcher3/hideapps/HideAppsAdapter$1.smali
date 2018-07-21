.class Lcom/lge/launcher3/hideapps/HideAppsAdapter$1;
.super Ljava/lang/Object;
.source "HideAppsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/hideapps/HideAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/launcher3/hideapps/HideAppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final compare(Lcom/lge/launcher3/hideapps/HideAppItem;Lcom/lge/launcher3/hideapps/HideAppItem;)I
    .registers 5

    .prologue
    .line 50
    iget-object v0, p1, Lcom/lge/launcher3/hideapps/HideAppItem;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 51
    iget-object v1, p2, Lcom/lge/launcher3/hideapps/HideAppItem;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 52
    if-nez v0, :cond_12

    if-nez v1, :cond_12

    .line 53
    const/4 v0, 0x0

    .line 60
    :goto_11
    return v0

    .line 54
    :cond_12
    if-nez v0, :cond_16

    .line 55
    const/4 v0, -0x1

    goto :goto_11

    .line 56
    :cond_16
    if-nez v1, :cond_1a

    .line 57
    const/4 v0, 0x1

    goto :goto_11

    .line 60
    :cond_1a
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/AppNameComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_11
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/launcher3/hideapps/HideAppItem;

    check-cast p2, Lcom/lge/launcher3/hideapps/HideAppItem;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/hideapps/HideAppsAdapter$1;->compare(Lcom/lge/launcher3/hideapps/HideAppItem;Lcom/lge/launcher3/hideapps/HideAppItem;)I

    move-result v0

    return v0
.end method
