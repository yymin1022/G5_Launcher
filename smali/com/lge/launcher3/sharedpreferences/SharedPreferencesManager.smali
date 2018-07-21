.class public Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;
.super Ljava/lang/Object;
.source "SharedPreferencesManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    :cond_1a
    return-void
.end method

.method public static contains(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Z
    .registers 5

    .prologue
    .line 177
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    invoke-static {p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z
    .registers 6

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-static {p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;F)F
    .registers 6

    .prologue
    .line 132
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    invoke-static {p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I
    .registers 6

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-static {p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;J)J
    .registers 8

    .prologue
    .line 108
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    invoke-static {p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 24
    const-string v0, "com.lge.launcher3.prefs"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static putBoolean(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;Z)Z
    .registers 6

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;F)Z
    .registers 6

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)Z
    .registers 6

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;J)Z
    .registers 8

    .prologue
    .line 120
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public static registerOnSharedPreferenceChangeListener(Landroid/content/Context;ILandroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 157
    return-void
.end method

.method public static final toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unregisterOnSharedPreferenceChangeListener(Landroid/content/Context;ILandroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getSharedPreferences(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 168
    return-void
.end method
