.class public Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;
.super Ljava/lang/Object;
.source "WallpaperValueCheckProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Editor"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private values:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->values:Landroid/content/ContentValues;

    .line 224
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->context:Landroid/content/Context;

    .line 225
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;)V
    .registers 3

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 5

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->context:Landroid/content/Context;

    const-string v2, "key"

    const-string v3, "type"

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 231
    return-void
.end method

.method public clear()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->context:Landroid/content/Context;

    const-string v2, "key"

    const-string v3, "type"

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public commit()V
    .registers 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->apply()V

    .line 235
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;
    .registers 5

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->values:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 249
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;
    .registers 5

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->values:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 259
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;
    .registers 5

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->values:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;
    .registers 6

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->values:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;
    .registers 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 264
    return-void
.end method
