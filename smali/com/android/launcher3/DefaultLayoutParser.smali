.class public Lcom/android/launcher3/DefaultLayoutParser;
.super Lcom/android/launcher3/AutoInstallsLayout;
.source "DefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;,
        Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;,
        Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;,
        Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;,
        Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;,
        Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;
    }
.end annotation


# static fields
.field private static final ATTR_CONTAINER:Ljava/lang/String; = "container"

.field private static final ATTR_FOLDER_ITEMS:Ljava/lang/String; = "folderItems"

.field private static final ATTR_SCREEN:Ljava/lang/String; = "screen"

.field protected static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "DefaultLayoutParser"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field protected static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_FULLSCREEN_ITEM:Ljava/lang/String; = "fullscreen_item"

.field private static final TAG_PARTNER_FOLDER:Ljava/lang/String; = "partner-folder"

.field protected static final TAG_RESOLVE:Ljava/lang/String; = "resolve"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .registers 13

    .prologue
    .line 53
    const-string v6, "favorites"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;I)V
    .registers 8

    .prologue
    .line 59
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected getFolderElementsMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DefaultLayoutParser;->getFolderElementsMap(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method getFolderElementsMap(Landroid/content/res/Resources;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object v0
.end method

.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "appwidget"

    new-instance v2, Lcom/android/launcher3/AutoInstallsLayout$AppWidgetParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AutoInstallsLayout$AppWidgetParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;

    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "resolve"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "partner-folder"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "fullscreen_item"

    new-instance v2, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method protected parseContainerAndScreen(Landroid/content/res/XmlResourceParser;[J)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 89
    const-wide/16 v0, -0x64

    aput-wide v0, p2, v2

    .line 90
    const-string v0, "container"

    invoke-static {p1, v0}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_17

    .line 92
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, p2, v2

    .line 94
    :cond_17
    const/4 v0, 0x1

    const-string v1, "screen"

    invoke-static {p1, v1}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 95
    return-void
.end method
