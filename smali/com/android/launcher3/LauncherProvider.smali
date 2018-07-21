.class public Lcom/android/launcher3/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherProvider$DatabaseHelper;,
        Lcom/android/launcher3/LauncherProvider$SqlArguments;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String;

.field private static final DATABASE_VERSION:I = 0x66

.field static final EMPTY_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DATABASE_CREATED"

.field private static final LOGD:Z = false

.field static final OLD_AUTHORITY:Ljava/lang/String; = "com.android.launcher2.settings"

.field private static final RESTRICTION_PACKAGE_NAME:Ljava/lang/String; = "workspace.configuration.package.name"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field static final TABLE_WORKSPACE_SCREENS:Ljava/lang/String; = "workspaceScreens"

.field private static final TAG:Ljava/lang/String; = "Launcher.LauncherProvider"

.field private static final URI_PARAM_IS_EXTERNAL_ADD:Ljava/lang/String; = "isExternalAdd"

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

.field public mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/launcher3/LauncherProvider;->ajc$preClinit()V

    .line 75
    sget-object v0, Lcom/android/launcher3/config/ProviderConfig;->AUTHORITY:Ljava/lang/String;

    sput-object v0, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static addModifiedTime(Landroid/content/ContentValues;)V
    .registers 5

    .prologue
    .line 313
    const-string v0, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    return-void
.end method

.method public static ajc$get$mListener(Lcom/android/launcher3/LauncherProvider;)Lcom/android/launcher3/LauncherProviderChangeListener;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherProvider.java"

    const-class v2, Lcom/android/launcher3/LauncherProvider;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "call"

    const-string v3, "com.android.launcher3.LauncherProvider"

    const-string v4, "java.lang.String:java.lang.String:android.os.Bundle"

    const-string v5, "method:arg:extras"

    const-string v6, ""

    const-string v7, "android.os.Bundle"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xed

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherProvider;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "getDefaultLayoutParser"

    const-string v3, "com.android.launcher3.LauncherProvider"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "com.android.launcher3.DefaultLayoutParser"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1ad

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherProvider;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mListener(Lcom/android/launcher3/LauncherProvider;Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    return-void
.end method

.method private static final call_aroundBody0(Lcom/android/launcher3/LauncherProvider;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;)Landroid/os/Bundle;
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_d

    .line 265
    :cond_c
    :goto_c
    return-object v0

    .line 242
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_78

    goto :goto_c

    :sswitch_15
    const-string v1, "get_boolean_setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    const-string v1, "value"

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 247
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 249
    const-string v3, "default_value"

    .line 248
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_c

    .line 242
    :sswitch_3e
    const-string v1, "set_boolean_setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 253
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v0, :cond_6c

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v0, p2, v1}, Lcom/android/launcher3/LauncherProviderChangeListener;->onSettingsChanged(Ljava/lang/String;Z)V

    .line 260
    :cond_6c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_c

    .line 242
    nop

    :sswitch_data_78
    .sparse-switch
        -0x6b7b0db0 -> :sswitch_15
        0x3881875c -> :sswitch_3e
    .end sparse-switch
.end method

.method private static final call_aroundBody1$advice(Lcom/android/launcher3/LauncherProvider;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/os/Bundle;
    .registers 15

    .prologue
    .line 178
    invoke-interface {p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherProvider;

    .line 179
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_6c

    .line 204
    :cond_d
    invoke-static {p0, p6, p7, p8, p4}, Lcom/android/launcher3/LauncherProvider;->call_aroundBody0(Lcom/android/launcher3/LauncherProvider;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;)Landroid/os/Bundle;

    move-result-object v0

    :goto_11
    return-object v0

    .line 179
    :sswitch_12
    const-string v1, "delete_appwidget_ids"

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 182
    const-string v2, "appwidget_ids"

    invoke-virtual {p8, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 183
    invoke-static {v0, v2}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$deleteAppWidgetIds(Lcom/android/launcher3/LauncherProvider;[I)V

    move-object v0, v1

    .line 184
    goto :goto_11

    .line 179
    :sswitch_2a
    const-string v1, "get_grid_info"

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 187
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 191
    sget-object v3, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_COLUMNS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 190
    invoke-static {v0, v3, v1}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v1

    .line 193
    sget-object v3, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;->CURRENT_WORKSAPACE_ROWS:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$DynamicGridKey;

    .line 192
    invoke-static {v0, v3, v2}, Lcom/lge/launcher3/profile/LGInvariantDeviceProfile;->getSharedPrefValue(Landroid/content/Context;Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;I)I

    move-result v0

    .line 194
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 195
    const/4 v3, 0x0

    aput v1, v2, v3

    .line 196
    const/4 v1, 0x1

    aput v0, v2, v1

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    const-string v1, "GridColumnRow"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_11

    .line 179
    :sswitch_data_6c
    .sparse-switch
        -0x55e70c76 -> :sswitch_12
        0x6afd845e -> :sswitch_2a
    .end sparse-switch
.end method

.method private createWorkspaceLoaderFromAppRestriction()Lcom/android/launcher3/AutoInstallsLayout;
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_9

    move-object v0, v1

    .line 426
    :goto_8
    return-object v0

    .line 407
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 408
    const-string v0, "user"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 409
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 410
    if-nez v0, :cond_21

    move-object v0, v1

    .line 411
    goto :goto_8

    .line 414
    :cond_21
    const-string v3, "workspace.configuration.package.name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_46

    .line 417
    :try_start_29
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 418
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 420
    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v4, v4, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v5, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 419
    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_3a} :catch_3c

    move-result-object v0

    goto :goto_8

    .line 421
    :catch_3c
    move-exception v0

    .line 422
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "Target package for restricted profile not found"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 423
    goto :goto_8

    :cond_46
    move-object v0, v1

    .line 426
    goto :goto_8
.end method

.method public static dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 7

    .prologue
    .line 134
    if-nez p4, :cond_a

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to insert null values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_a
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1a
    invoke-virtual {p0, p2, p4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 141
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDefaultLayoutParser()Lcom/android/launcher3/DefaultLayoutParser;
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherProvider;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;->aspectOf()Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser_aroundBody5$advice(Lcom/android/launcher3/LauncherProvider;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v0

    return-object v0
.end method

.method private static final getDefaultLayoutParser_aroundBody4(Lcom/android/launcher3/LauncherProvider;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/DefaultLayoutParser;
    .registers 8

    .prologue
    .line 430
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 432
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v2, v2, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 433
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 432
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method private static final getDefaultLayoutParser_aroundBody5$advice(Lcom/android/launcher3/LauncherProvider;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/receiver/DefautWorkspaceAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/DefaultLayoutParser;
    .registers 11

    .prologue
    .line 14
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/LauncherProvider;

    .line 15
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/lge/launcher3/receiver/DefaultWorkspaceLoader;->getIDFromCAList(Landroid/content/Context;)I

    move-result v5

    .line 17
    if-nez v5, :cond_1d

    .line 18
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/InvariantDeviceProfile;->ajc$get$defaultLayoutId(Lcom/android/launcher3/InvariantDeviceProfile;)I

    move-result v5

    .line 20
    :cond_1d
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v3, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-static {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->ajc$get$mAppWidgetHost(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;)Landroid/appwidget/AppWidgetHost;

    move-result-object v2

    iget-object v3, v3, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method static getMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    .line 1367
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT MAX(_id) FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1369
    if-eqz v4, :cond_4b

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1370
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_22
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_22} :catch_46

    move-result-wide v0

    .line 1372
    :goto_23
    if-eqz v4, :cond_28

    .line 1373
    :try_start_25
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1375
    :cond_28
    cmp-long v2, v0, v2

    if-nez v2, :cond_45

    .line 1376
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: could not query max id in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_41
    .catch Landroid/database/SQLException; {:try_start_25 .. :try_end_41} :catch_41

    .line 1378
    :catch_41
    move-exception v2

    .line 1379
    :goto_42
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    .line 1382
    :cond_45
    return-wide v0

    .line 1378
    :catch_46
    move-exception v0

    move-object v5, v0

    move-wide v0, v2

    move-object v2, v5

    goto :goto_42

    :cond_4b
    move-wide v0, v2

    goto :goto_23
.end method

.method private static final get_aroundBody2(Lcom/android/launcher3/LauncherProvider;Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;
    .registers 3

    .prologue
    .line 363
    invoke-static {p1}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v0

    return-object v0
.end method

.method private static final get_aroundBody3$advice(Lcom/android/launcher3/LauncherProvider;Landroid/content/pm/PackageManager;Lcom/lge/launcher3/util/CotaReloadAspect;Landroid/content/pm/PackageManager;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/Partner;
    .registers 9

    .prologue
    .line 15
    invoke-static {p0, p3}, Lcom/android/launcher3/LauncherProvider;->get_aroundBody2(Lcom/android/launcher3/LauncherProvider;Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object v0

    .line 16
    if-nez v0, :cond_2a

    .line 17
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    const-string v2, "launcher.cota.path"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 20
    const-string v0, "launcher.cota.path"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p3, v0}, Lcom/lge/launcher3/util/CotaReloadAspect;->ajc$interMethodDispatch1$com_lge_launcher3_util_CotaReloadAspect$com_android_launcher3_Partner$getforPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/Partner;

    move-result-object v0

    .line 24
    :cond_2a
    return-object v0
.end method

.method public static isUpgradeDB(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$isUpgradeDB(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private notifyListeners()V
    .registers 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherBackupAgentHelper;->dataChanged(Landroid/content/Context;)V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v0, :cond_10

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherProviderChangeListener;->onLauncherProviderChange()V

    .line 310
    :cond_10
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 205
    :try_start_9
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 206
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 207
    return-object v0

    .line 208
    :catchall_14
    move-exception v0

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 210
    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 178
    new-instance v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 180
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 183
    :try_start_f
    array-length v4, p2

    move v1, v0

    .line 184
    :goto_11
    if-lt v1, v4, :cond_1e

    .line 190
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_3b

    .line 192
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 195
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 196
    array-length v0, p2

    :goto_1d
    return v0

    .line 185
    :cond_1e
    :try_start_1e
    aget-object v5, p2, v1

    invoke-static {v5}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 186
    iget-object v5, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v6, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v8, p2, v1

    invoke-static {v5, v3, v6, v7, v8}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_3b

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_38

    .line 192
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1d

    .line 184
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 191
    :catchall_3b
    move-exception v0

    .line 192
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 193
    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherProvider;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/LauncherProvider;->call_aroundBody1$advice(Lcom/android/launcher3/LauncherProvider;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherProviderAspect;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public clearFlagEmptyDbCreated()V
    .registers 4

    .prologue
    .line 336
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 339
    const-string v1, "EMPTY_DATABASE_CREATED"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    return-void
.end method

.method public convertShortcutsToLauncherActivities()V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->convertShortcutsToLauncherActivities(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 447
    return-void
.end method

.method public declared-synchronized createEmptyDB()V
    .registers 3

    .prologue
    .line 332
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 333
    monitor-exit p0

    return-void

    .line 332
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8

    .prologue
    .line 215
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 218
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 219
    if-lez v0, :cond_1a

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 221
    :cond_1a
    return v0
.end method

.method public deleteAppWidgetIds([I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$deleteAppWidgetIds(Lcom/android/launcher3/LauncherProvider;[I)V

    return-void
.end method

.method public declared-synchronized deleteDatabase()V
    .registers 3

    .prologue
    .line 452
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 453
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->close()V

    .line 455
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 456
    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 458
    :cond_1e
    new-instance v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    iput-object v1, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 460
    monitor-exit p0

    return-void

    .line 452
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteEmptyFolders()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 278
    :try_start_e
    const-string v3, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    .line 283
    const-string v1, "favorites"

    .line 284
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    .line 285
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 283
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 286
    :goto_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_44

    .line 289
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 290
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 291
    const-string v1, "favorites"

    .line 292
    const-string v2, "_id"

    .line 291
    invoke-static {v2, v8}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 292
    const/4 v3, 0x0

    .line 291
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    :cond_3d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_40} :catch_51
    .catchall {:try_start_e .. :try_end_40} :catchall_62

    .line 299
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 301
    :goto_43
    return-object v8

    .line 287
    :cond_44
    const/4 v2, 0x0

    :try_start_45
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Landroid/database/SQLException; {:try_start_45 .. :try_end_50} :catch_51
    .catchall {:try_start_45 .. :try_end_50} :catchall_62

    goto :goto_22

    .line 295
    :catch_51
    move-exception v1

    .line 296
    :try_start_52
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_62

    .line 299
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_43

    .line 298
    :catchall_62
    move-exception v1

    .line 299
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 300
    throw v1
.end method

.method public generateNewItemId()J
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewScreenId()J
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->generateNewScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.dir/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_1f
    return-object v0

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vnd.android.cursor.item/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 146
    new-instance v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 149
    const-string v1, "isExternalAdd"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_22

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    .line 151
    :goto_17
    if-eqz v1, :cond_24

    .line 152
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->initializeExternalAdd(Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 172
    :cond_21
    :goto_21
    return-object v0

    .line 150
    :cond_22
    const/4 v1, 0x0

    goto :goto_17

    .line 157
    :cond_24
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 158
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 159
    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v2, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v4, v3, v2, v0, p2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 160
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_21

    .line 162
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 163
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 165
    if-eqz v1, :cond_21

    .line 166
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_21

    .line 168
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->reloadWorkspace()V

    goto :goto_21
.end method

.method public declared-synchronized loadDefaultFavoritesIfNecessary()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 351
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    const-string v1, "EMPTY_DATABASE_CREATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 355
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "loading default workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->createWorkspaceLoaderFromAppRestriction()Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v0

    .line 358
    if-nez v0, :cond_33

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, v1, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 359
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v0

    .line 362
    :cond_33
    if-nez v0, :cond_6f

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/lge/launcher3/util/CotaReloadAspect;->aspectOf()Lcom/lge/launcher3/util/CotaReloadAspect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v1, v3}, Lcom/android/launcher3/LauncherProvider;->get_aroundBody3$advice(Lcom/android/launcher3/LauncherProvider;Landroid/content/pm/PackageManager;Lcom/lge/launcher3/util/CotaReloadAspect;Landroid/content/pm/PackageManager;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/Partner;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Lcom/android/launcher3/Partner;->hasDefaultLayout()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 365
    invoke-virtual {v1}, Lcom/android/launcher3/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 366
    const-string v2, "partner_default_layout"

    .line 367
    const-string v3, "xml"

    invoke-virtual {v1}, Lcom/android/launcher3/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {v4, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 368
    if-eqz v5, :cond_6f

    .line 369
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v2, v2, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 370
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 369
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 375
    :cond_6f
    if-eqz v0, :cond_a2

    const/4 v1, 0x1

    .line 376
    :goto_72
    if-nez v0, :cond_78

    .line 377
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser()Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v0

    .line 382
    :cond_78
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    .line 384
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v0

    if-gtz v0, :cond_9d

    .line 385
    if-eqz v1, :cond_9d

    .line 387
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    .line 388
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 389
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->getDefaultLayoutParser()Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v2

    .line 388
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    .line 391
    :cond_9d
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V
    :try_end_a0
    .catchall {:try_start_2 .. :try_end_a0} :catchall_a4

    .line 393
    :cond_a0
    monitor-exit p0

    return-void

    :cond_a2
    move v1, v6

    .line 375
    goto :goto_72

    .line 351
    :catchall_a4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public migrateLauncher2Shortcuts()V
    .registers 5

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 438
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 437
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->migrateLauncher2Shortcuts(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)V

    .line 439
    return-void
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-direct {v2, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 93
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 94
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->setLauncherProvider(Lcom/android/launcher3/LauncherProvider;)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 121
    new-instance v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 122
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 123
    iget-object v1, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 126
    iget-object v3, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 129
    return-object v0
.end method

.method public resetDatabaseHelper()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$resetDatabaseHelper(Lcom/android/launcher3/LauncherProvider;)V

    return-void
.end method

.method public setLauncherProviderChangeListener(Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .registers 4

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    iput-object v1, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    .line 105
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    .prologue
    .line 226
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 229
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 230
    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 231
    if-lez v0, :cond_1d

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 233
    :cond_1d
    return v0
.end method

.method public updateFolderItemsRank()V
    .registers 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->updateFolderItemsRank(Landroid/database/sqlite/SQLiteDatabase;Z)Z

    .line 443
    return-void
.end method

.method public updateMaxItemId(J)V
    .registers 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->updateMaxItemId(J)V

    .line 322
    return-void
.end method

.method public updateMaxScreenId(J)V
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/LauncherProviderItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherProviderItds$com_android_launcher3_LauncherProvider$updateMaxScreenId(Lcom/android/launcher3/LauncherProvider;J)V

    return-void
.end method

.method public wasNewDbCreated()Z
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->wasNewDbCreated()Z

    move-result v0

    return v0
.end method
