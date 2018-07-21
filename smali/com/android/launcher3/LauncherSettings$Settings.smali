.class public final Lcom/android/launcher3/LauncherSettings$Settings;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_DEFAULT_VALUE:Ljava/lang/String; = "default_value"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final GRID_COMLUMN_ROW:Ljava/lang/String; = "GridColumnRow"

.field public static final METHOD_GET_BOOLEAN:Ljava/lang/String; = "get_boolean_setting"

.field public static final METHOD_GET_GRID_INFO:Ljava/lang/String; = "get_grid_info"

.field public static final METHOD_SET_BOOLEAN:Ljava/lang/String; = "set_boolean_setting"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    sget-object v1, Lcom/android/launcher3/config/ProviderConfig;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 332
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
