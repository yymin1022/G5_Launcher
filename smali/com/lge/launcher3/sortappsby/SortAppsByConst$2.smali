.class Lcom/lge/launcher3/sortappsby/SortAppsByConst$2;
.super Ljava/lang/Object;
.source "SortAppsByConst.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/sortappsby/SortAppsByConst;
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
        "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final compare(Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)I
    .registers 7

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/lge/launcher3/util/UserUtils;->compare(Landroid/os/UserHandle;Landroid/os/UserHandle;)I

    move-result v0

    .line 80
    if-eqz v0, :cond_17

    .line 86
    :goto_16
    return v0

    .line 84
    :cond_17
    invoke-virtual {p1}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getLauncherActivityInfo()Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    .line 85
    invoke-virtual {p2}, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;->getLauncherActivityInfo()Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v2

    .line 86
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_16
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    check-cast p2, Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$2;->compare(Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;)I

    move-result v0

    return v0
.end method
