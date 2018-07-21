.class public Lcom/android/launcher3/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Stats$LaunchSourceProvider;,
        Lcom/android/launcher3/Stats$LaunchSourceUtils;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH:Ljava/lang/String; = "com.android.launcher3.action.LAUNCH"

.field public static final CONTAINER_ALL_APPS:Ljava/lang/String; = "all_apps"

.field public static final CONTAINER_HOMESCREEN:Ljava/lang/String; = "homescreen"

.field public static final CONTAINER_HOTSEAT:Ljava/lang/String; = "hotseat"

.field public static final CONTAINER_SEARCH_BOX:Ljava/lang/String; = "search_box"

.field private static final DEBUG_BROADCASTS:Z = false

.field public static final EXTRA_CELLX:Ljava/lang/String; = "cellX"

.field public static final EXTRA_CELLY:Ljava/lang/String; = "cellY"

.field public static final EXTRA_CONTAINER:Ljava/lang/String; = "container"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "intent"

.field public static final EXTRA_SCREEN:Ljava/lang/String; = "screen"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_EXTRA_CONTAINER:Ljava/lang/String; = "container"

.field public static final SOURCE_EXTRA_CONTAINER_PAGE:Ljava/lang/String; = "container_page"

.field public static final SOURCE_EXTRA_SUB_CONTAINER:Ljava/lang/String; = "sub_container"

.field public static final SOURCE_EXTRA_SUB_CONTAINER_PAGE:Ljava/lang/String; = "sub_container_page"

.field public static final SUB_CONTAINER_ALL_APPS_A_Z:Ljava/lang/String; = "a-z"

.field public static final SUB_CONTAINER_ALL_APPS_PREDICTION:Ljava/lang/String; = "prediction"

.field public static final SUB_CONTAINER_ALL_APPS_SEARCH:Ljava/lang/String; = "search"

.field public static final SUB_CONTAINER_FOLDER:Ljava/lang/String; = "folder"


# instance fields
.field private final mLaunchBroadcastPermission:Ljava/lang/String;

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 4

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/launcher3/Stats;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 112
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/android/launcher3/Stats;->mLaunchBroadcastPermission:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public recordLaunch(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ShortcutInfo;)V
    .registers 10

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher3.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    if-eqz p3, :cond_3c

    .line 137
    const-string v1, "container"

    iget-wide v2, p3, Lcom/android/launcher3/ShortcutInfo;->container:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 138
    const-string v2, "screen"

    iget-wide v4, p3, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 139
    const-string v2, "cellX"

    iget v3, p3, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 140
    const-string v2, "cellY"

    iget v3, p3, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    :cond_3c
    invoke-static {}, Lcom/android/launcher3/Stats$LaunchSourceUtils;->createSourceData()Landroid/os/Bundle;

    move-result-object v1

    .line 144
    invoke-static {p1, v1}, Lcom/android/launcher3/Stats$LaunchSourceUtils;->populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/android/launcher3/Stats;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Stats;->mLaunchBroadcastPermission:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 147
    return-void
.end method
