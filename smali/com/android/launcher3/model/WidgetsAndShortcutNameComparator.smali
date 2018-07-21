.class public Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;
.super Ljava/lang/Object;
.source "WidgetsAndShortcutNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandle:Lcom/android/launcher3/compat/UserHandleCompat;

.field private final mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    .line 29
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    .line 30
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 31
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 42
    :goto_13
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    :goto_23
    instance-of v2, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_67

    .line 52
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v5, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {v5, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    move v2, v3

    .line 53
    :goto_38
    instance-of v5, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v5, :cond_4d

    .line 54
    iget-object v5, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mMainHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v6, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {v6, p2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    move v4, v3

    .line 58
    :cond_4d
    if-eqz v2, :cond_69

    if-nez v4, :cond_69

    .line 64
    :goto_51
    return v3

    .line 39
    :cond_52
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->loadLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_13

    .line 45
    :cond_5d
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->loadLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_67
    move v2, v4

    .line 51
    goto :goto_38

    .line 61
    :cond_69
    if-nez v2, :cond_6f

    if-eqz v4, :cond_6f

    .line 62
    const/4 v3, -0x1

    goto :goto_51

    .line 64
    :cond_6f
    iget-object v2, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v2, v1, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_51
.end method

.method public loadLabel(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    instance-of v0, p1, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_b

    .line 69
    check-cast p1, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;

    invoke-virtual {p1}, Lcom/lge/launcher3/widgettray/GroupLauncherAppWidgetProviderInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_a
    return-object v0

    .line 70
    :cond_b
    instance-of v0, p1, Lcom/lge/launcher3/widgettray/GroupResolveInfo;

    if-eqz v0, :cond_16

    .line 71
    check-cast p1, Lcom/lge/launcher3/widgettray/GroupResolveInfo;

    invoke-virtual {p1}, Lcom/lge/launcher3/widgettray/GroupResolveInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 73
    :cond_16
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_27

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->loadLabel(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 75
    :cond_27
    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
