.class public Lcom/android/launcher3/Stats$LaunchSourceUtils;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchSourceUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSourceData()Landroid/os/Bundle;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v1, "container"

    const-string v2, "homescreen"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "container_page"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v1, "sub_container_page"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    return-object v0
.end method

.method public static populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 59
    if-nez p0, :cond_3

    .line 78
    :cond_2
    :goto_2
    return-void

    .line 63
    :cond_3
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 65
    :goto_8
    if-eqz v0, :cond_e

    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_15

    :cond_e
    move-object v0, v1

    .line 73
    :goto_f
    if-eqz v0, :cond_21

    .line 74
    invoke-interface {v0, p1}, Lcom/android/launcher3/Stats$LaunchSourceProvider;->fillInLaunchSourceData(Landroid/os/Bundle;)V

    goto :goto_2

    .line 66
    :cond_15
    instance-of v2, v0, Lcom/android/launcher3/Stats$LaunchSourceProvider;

    if-eqz v2, :cond_1c

    .line 67
    check-cast v0, Lcom/android/launcher3/Stats$LaunchSourceProvider;

    goto :goto_f

    .line 70
    :cond_1c
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_8

    .line 75
    :cond_21
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected LaunchSourceProvider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
