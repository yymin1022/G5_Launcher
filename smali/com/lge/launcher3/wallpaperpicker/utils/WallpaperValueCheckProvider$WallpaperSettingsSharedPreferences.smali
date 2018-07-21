.class public Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;
.super Ljava/lang/Object;
.source "WallpaperValueCheckProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperSettingsSharedPreferences"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;)V
    .registers 3

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public edit()Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;
    .registers 4

    .prologue
    .line 284
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;-><init>(Landroid/content/Context;Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;)V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    const-string v3, "boolean"

    invoke-static {v1, p1, v3}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 308
    invoke-static {v0, p2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$4(Landroid/database/Cursor;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    const-string v3, "float"

    invoke-static {v1, p1, v3}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 302
    invoke-static {v0, p2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$3(Landroid/database/Cursor;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    const-string v3, "integer"

    invoke-static {v1, p1, v3}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 314
    invoke-static {v0, p2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$5(Landroid/database/Cursor;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    const-string v3, "long"

    invoke-static {v1, p1, v3}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 296
    invoke-static {v0, p2, p3}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$2(Landroid/database/Cursor;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;->context:Landroid/content/Context;

    const-string v3, "string"

    invoke-static {v1, p1, v3}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 290
    invoke-static {v0, p2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
