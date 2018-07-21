.class Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;
.super Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppShortcutWithUriParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method

.method private getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move-object v1, v2

    .line 152
    :goto_8
    if-lt v3, v4, :cond_b

    .line 168
    :goto_a
    return-object v1

    .line 154
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v0, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 155
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 154
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 156
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3d

    .line 157
    if-eqz v1, :cond_28

    move-object v1, v2

    .line 158
    goto :goto_a

    .line 160
    :cond_28
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_2e} :catch_33

    .line 152
    :goto_2e
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_8

    .line 163
    :catch_33
    move-exception v0

    .line 164
    const-string v1, "DefaultLayoutParser"

    const-string v3, "Unable to get info about resolve results"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 165
    goto :goto_a

    :cond_3d
    move-object v0, v1

    goto :goto_2e
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 175
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_a

    .line 182
    const/4 v2, 0x1

    :cond_9
    return v2

    .line 176
    :cond_a
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 177
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 178
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 175
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method protected invalidPackageOrClass(Landroid/content/res/XmlResourceParser;)J
    .registers 9

    .prologue
    const/high16 v6, 0x10000

    const/4 v5, 0x0

    const-wide/16 v2, -0x1

    .line 104
    const-string v0, "uri"

    invoke-static {p1, v0}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 106
    const-string v0, "DefaultLayoutParser"

    const-string v1, "Skipping invalid <favorite> with no component or uri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 145
    :goto_19
    return-wide v0

    .line 112
    :cond_1a
    const/4 v1, 0x0

    :try_start_1b
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1e
    .catch Ljava/net/URISyntaxException; {:try_start_1b .. :try_end_1e} :catch_44

    move-result-object v1

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v0, v0, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 120
    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 127
    invoke-direct {p0, v1}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 128
    if-nez v0, :cond_4e

    .line 131
    const-string v0, "DefaultLayoutParser"

    const-string v1, "No preference or single system activity found for "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 133
    goto :goto_19

    .line 113
    :catch_44
    move-exception v0

    .line 114
    const-string v1, "DefaultLayoutParser"

    const-string v4, "Unable to add meta-favorite: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    .line 115
    goto :goto_19

    .line 137
    :cond_4e
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v1, v1, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 139
    if-nez v1, :cond_5e

    move-wide v0, v2

    .line 140
    goto :goto_19

    .line 142
    :cond_5e
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, v3, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1, v5}, Lcom/android/launcher3/DefaultLayoutParser;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v0

    goto :goto_19
.end method
