.class public final Lcom/android/launcher3/LauncherSettings$SharingContents;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Lcom/android/launcher3/LauncherSettings$ChangeLogColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharingContents"
.end annotation


# static fields
.field public static final ADAPTIVE_TEXT_COLOR:Ljava/lang/String; = "adaptiveTextColor"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "sharingContents"

.field public static final WALLPAPER_COMMON_COLOR:Ljava/lang/String; = "wallpaperCommonColor"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/config/ProviderConfig;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sharingContents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 360
    sput-object v0, Lcom/android/launcher3/LauncherSettings$SharingContents;->CONTENT_URI:Landroid/net/Uri;

    .line 371
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
