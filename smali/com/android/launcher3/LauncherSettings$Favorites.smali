.class public final Lcom/android/launcher3/LauncherSettings$Favorites;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Lcom/android/launcher3/LauncherSettings$BaseLauncherColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorites"
.end annotation


# static fields
.field public static final APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final CELLX:Ljava/lang/String; = "cellX"

.field public static final CELLY:Ljava/lang/String; = "cellY"

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTAINER_DESKTOP:I = -0x64

.field public static final CONTAINER_HOTSEAT:I = -0x65

.field public static final CONTENT_URI:Landroid/net/Uri;

.field static final DISPLAY_MODE:Ljava/lang/String; = "displayMode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final IS_SHORTCUT:Ljava/lang/String; = "isShortcut"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ITEM_TYPE_APPWIDGET:I = 0x4

.field public static final ITEM_TYPE_CUSTOM_APPWIDGET:I = 0x5

.field public static final ITEM_TYPE_FOLDER:I = 0x2

.field public static final ITEM_TYPE_FULLSCREEN_ITEM:I = 0x8

.field static final ITEM_TYPE_LIVE_FOLDER:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final ITEM_TYPE_WIDGET_CLOCK:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final ITEM_TYPE_WIDGET_PHOTO_FRAME:I = 0x3ea
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final ITEM_TYPE_WIDGET_SEARCH:I = 0x3e9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final PROFILE_ID:Ljava/lang/String; = "profileId"

.field public static final RANK:Ljava/lang/String; = "rank"

.field public static final RESTORED:Ljava/lang/String; = "restored"

.field public static final SCREEN:Ljava/lang/String; = "screen"

.field public static final SPANX:Ljava/lang/String; = "spanX"

.field public static final SPANY:Ljava/lang/String; = "spanY"

.field public static final TABLE_NAME:Ljava/lang/String; = "favorites"

.field static final URI:Ljava/lang/String; = "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/android/launcher3/config/ProviderConfig;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 314
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final containerToString(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_e

    .line 169
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 167
    :pswitch_8
    const-string v0, "desktop"

    goto :goto_7

    .line 168
    :pswitch_b
    const-string v0, "hotseat"

    goto :goto_7

    .line 166
    :pswitch_data_e
    .packed-switch -0x65
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method static getContentUri(J)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/config/ProviderConfig;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
