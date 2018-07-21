.class public Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;
.super Landroid/content/ContentProvider;
.source "WallpaperValueCheckProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;,
        Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;
    }
.end annotation


# static fields
.field private static final BOOLEAN_TYPE:Ljava/lang/String; = "boolean"

.field private static final FLOAT_TYPE:Ljava/lang/String; = "float"

.field private static final INT_TYPE:Ljava/lang/String; = "integer"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final LONG_TYPE:Ljava/lang/String; = "long"

.field private static final MATCH_DATA:I = 0x10000

.field private static final STRING_TYPE:Ljava/lang/String; = "string"

.field private static final TYPE:Ljava/lang/String; = "type"

.field public static sBaseURI:Landroid/net/Uri;

.field private static sMatcher:Landroid/content/UriMatcher;

.field public static sPREFFERENCE_AUTHORITY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 319
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getContentUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Landroid/database/Cursor;J)J
    .registers 6

    .prologue
    .line 187
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getLongValue(Landroid/database/Cursor;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3(Landroid/database/Cursor;F)F
    .registers 3

    .prologue
    .line 199
    invoke-static {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getFloatValue(Landroid/database/Cursor;F)F

    move-result v0

    return v0
.end method

.method static synthetic access$4(Landroid/database/Cursor;Z)Z
    .registers 3

    .prologue
    .line 163
    invoke-static {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getBooleanValue(Landroid/database/Cursor;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Landroid/database/Cursor;I)I
    .registers 3

    .prologue
    .line 175
    invoke-static {p0, p1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getIntValue(Landroid/database/Cursor;I)I

    move-result v0

    return v0
.end method

.method public static edit(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;
    .registers 3

    .prologue
    .line 212
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;-><init>(Landroid/content/Context;Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$Editor;)V

    return-object v0
.end method

.method private static getBooleanValue(Landroid/database/Cursor;Z)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 164
    if-nez p0, :cond_4

    .line 172
    :goto_3
    return p1

    .line 168
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 169
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_11

    const/4 v0, 0x1

    .line 171
    :cond_11
    :goto_11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p1, v0

    .line 172
    goto :goto_3

    :cond_16
    move v0, p1

    goto :goto_11
.end method

.method private static final getContentUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 320
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sBaseURI:Landroid/net/Uri;

    if-nez v0, :cond_7

    .line 321
    invoke-static {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->init(Landroid/content/Context;)V

    .line 323
    :cond_7
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sBaseURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;
    .registers 3

    .prologue
    .line 216
    new-instance v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;-><init>(Landroid/content/Context;Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider$WallpaperSettingsSharedPreferences;)V

    return-object v0
.end method

.method private static getFloatValue(Landroid/database/Cursor;F)F
    .registers 3

    .prologue
    .line 200
    if-nez p0, :cond_3

    .line 208
    :goto_2
    return p1

    .line 204
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 205
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    .line 207
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private static getIntValue(Landroid/database/Cursor;I)I
    .registers 3

    .prologue
    .line 176
    if-nez p0, :cond_3

    .line 184
    :goto_2
    return p1

    .line 180
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 181
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 183
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private static getLongValue(Landroid/database/Cursor;J)J
    .registers 4

    .prologue
    .line 188
    if-nez p0, :cond_3

    .line 196
    :goto_2
    return-wide p1

    .line 192
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 193
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 195
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private static getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 152
    if-nez p0, :cond_3

    .line 160
    :goto_2
    return-object p1

    .line 156
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 157
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private static init(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 37
    const v0, 0x7f0f0012

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sPREFFERENCE_AUTHORITY:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 39
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sPREFFERENCE_AUTHORITY:Ljava/lang/String;

    const-string v2, "*/*"

    const/high16 v3, 0x10000

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sPREFFERENCE_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sBaseURI:Landroid/net/Uri;

    .line 42
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 59
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported uri "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_1e
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    const/4 v0, 0x0

    return v0

    .line 59
    nop

    :pswitch_data_38
    .packed-switch 0x10000
        :pswitch_1e
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vnd.android.cursor.item/vnd."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sPREFFERENCE_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9

    .prologue
    .line 73
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_b8

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported uri "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_1e
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 77
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_47

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_b4

    .line 97
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    :goto_45
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    if-nez v1, :cond_5d

    .line 81
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_36

    .line 82
    :cond_5d
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_67

    .line 83
    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_36

    .line 84
    :cond_67
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_75

    .line 85
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_36

    .line 86
    :cond_75
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_83

    .line 87
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_36

    .line 88
    :cond_83
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_91

    .line 89
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_36

    .line 90
    :cond_91
    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_9f

    .line 91
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_36

    .line 93
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_b4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_45

    .line 73
    :pswitch_data_b8
    .packed-switch 0x10000
        :pswitch_1e
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sMatcher:Landroid/content/UriMatcher;

    if-nez v0, :cond_b

    .line 47
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->init(Landroid/content/Context;)V

    .line 49
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    sget-object v0, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_c8

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported uri "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_20
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    new-instance v4, Landroid/database/MatrixCursor;

    new-array v5, v2, [Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/utils/WallpaperValueCheckProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 120
    invoke-interface {v5, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_51

    move-object v0, v4

    .line 143
    :goto_50
    return-object v0

    .line 123
    :cond_51
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    .line 125
    const-string v7, "string"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 126
    const/4 v1, 0x0

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_62
    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object v0, v4

    .line 143
    goto :goto_50

    .line 127
    :cond_67
    const-string v7, "boolean"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 128
    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v2

    :goto_76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_62

    :cond_7b
    move v0, v3

    goto :goto_76

    .line 129
    :cond_7d
    const-string v2, "long"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 130
    const-wide/16 v2, 0x0

    invoke-interface {v5, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_62

    .line 131
    :cond_90
    const-string v2, "integer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 132
    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_62

    .line 133
    :cond_a1
    const-string v2, "float"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 134
    const/4 v1, 0x0

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_62

    .line 136
    :cond_b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_data_c8
    .packed-switch 0x10000
        :pswitch_20
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
