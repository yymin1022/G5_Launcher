.class public final enum Lcom/lge/launcher3/util/LGHomeFeature$Config;
.super Ljava/lang/Enum;
.source "LGHomeFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/util/LGHomeFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/util/LGHomeFeature$Config;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_ADD_NEW_ITEMS_ON_LAST_PAGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_SUPPORT_DIRECTV_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_SUPPORT_GOOGLE_HOTWORD:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_SUPPORT_GOOGLE_NOW:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_SUPPORT_GOOGLE_NOW_INIT_VALUE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_SUPPORT_SETTING_DDT_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_SUPPORT_SMARTBULLETIN_DOWNLOADABLE_PROVIDER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_SUPPORT_UNINSTALL_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_AKA_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_ALLAPPSLESS:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_BACKUP_RESTORE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_CARRIER_WALLPAPER_ITEM:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_DATA_CONNECTION_DIALOG_VDF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_DYNAMIC_GRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_EDITMODE_DYNAMICGRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_EDITMODE_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_EDITMODE_WALLPAPER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_HOMESCREEN_BLUR:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_ICONCHANGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_KNOCK_OFF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_PHOTOICON_LAYOUT:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_RECENT_UNINSTALL_APP:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_SKT_PHONE_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_SMARTBULLETIN:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_SMARTBULLETIN_NESTED_SCROLL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_SORT_APPS_BY_NAME_IN_MULTIUSER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_WALLPAPER_IN_OPTIMUS_THEME_RESOURCE_FILE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

.field public static final enum FEATURE_USE_WIDGET_BLUR:Lcom/lge/launcher3/util/LGHomeFeature$Config;


# instance fields
.field private mDefaultValue:Z

.field private mResoureID:I

.field private mValue:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_KNOCK_OFF"

    const v2, 0x7f0d000e

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_KNOCK_OFF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 16
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_SMARTBULLETIN"

    .line 17
    const v2, 0x7f0d0007

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 16
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 18
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_SUPPORT_SMARTBULLETIN_DOWNLOADABLE_PROVIDER"

    .line 19
    const v2, 0x7f0d0008

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 18
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_SMARTBULLETIN_DOWNLOADABLE_PROVIDER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 20
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_SMARTBULLETIN_NESTED_SCROLL"

    .line 21
    const v2, 0x7f0d000f

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 20
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN_NESTED_SCROLL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 22
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_WALLPAPER_IN_OPTIMUS_THEME_RESOURCE_FILE"

    .line 23
    const v2, 0x7f0d0010

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 22
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_WALLPAPER_IN_OPTIMUS_THEME_RESOURCE_FILE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 24
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_DATA_CONNECTION_DIALOG_VDF"

    const/4 v2, 0x5

    .line 25
    const v3, 0x7f0d000c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 24
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DATA_CONNECTION_DIALOG_VDF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 26
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_WIDGET_BLUR"

    const/4 v2, 0x6

    .line 27
    const v3, 0x7f0d0017

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 26
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_WIDGET_BLUR:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 28
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_HOMESCREEN_BLUR"

    const/4 v2, 0x7

    .line 29
    const v3, 0x7f0d0018

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 28
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_HOMESCREEN_BLUR:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 30
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_ICONCHANGE"

    const/16 v2, 0x8

    .line 31
    const v3, 0x7f0d000a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 30
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_ICONCHANGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 32
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_BACKUP_RESTORE"

    const/16 v2, 0x9

    .line 33
    const v3, 0x7f0d0009

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 32
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_BACKUP_RESTORE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 34
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_ALLAPPSLESS"

    const/16 v2, 0xa

    .line 35
    const v3, 0x7f0d0016

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 34
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_ALLAPPSLESS:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 36
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_PHOTOICON_LAYOUT"

    const/16 v2, 0xb

    .line 37
    const v3, 0x7f0d0011

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 36
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_PHOTOICON_LAYOUT:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 38
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_QMEMOPLUS_PANEL"

    const/16 v2, 0xc

    .line 39
    const v3, 0x7f0d000b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 38
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 40
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_DYNAMIC_GRID"

    const/16 v2, 0xd

    .line 41
    const v3, 0x7f0d0019

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 40
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DYNAMIC_GRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 42
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_SKT_PHONE_MODE"

    const/16 v2, 0xe

    .line 43
    const v3, 0x7f0d0013

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 42
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SKT_PHONE_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 44
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_CARRIER_WALLPAPER_ITEM"

    const/16 v2, 0xf

    .line 45
    const v3, 0x7f0d0014

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 44
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_CARRIER_WALLPAPER_ITEM:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 46
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_AKA_THEME"

    const/16 v2, 0x10

    .line 47
    const v3, 0x7f0d0015

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 46
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_AKA_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 48
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_RECENT_UNINSTALL_APP"

    const/16 v2, 0x11

    .line 49
    const v3, 0x7f0d0021

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 48
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_RECENT_UNINSTALL_APP:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 50
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_EDITMODE_WALLPAPER"

    const/16 v2, 0x12

    .line 51
    const v3, 0x7f0d0023

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 50
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_WALLPAPER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 52
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_EDITMODE_DYNAMICGRID"

    const/16 v2, 0x13

    .line 53
    const v3, 0x7f0d0022

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 52
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_DYNAMICGRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 54
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_EDITMODE_THEME"

    const/16 v2, 0x14

    .line 55
    const v3, 0x7f0d0024

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 54
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 56
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_USE_SORT_APPS_BY_NAME_IN_MULTIUSER"

    const/16 v2, 0x15

    .line 57
    const v3, 0x7f0d001a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 56
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SORT_APPS_BY_NAME_IN_MULTIUSER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 58
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_ADD_NEW_ITEMS_ON_LAST_PAGE"

    const/16 v2, 0x16

    .line 59
    const v3, 0x7f0d001b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 58
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_ADD_NEW_ITEMS_ON_LAST_PAGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 60
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_SUPPORT_UNINSTALL_MODE"

    const/16 v2, 0x17

    .line 61
    const v3, 0x7f0d001c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 60
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_UNINSTALL_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 62
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_SUPPORT_GOOGLE_NOW"

    const/16 v2, 0x18

    .line 63
    const v3, 0x7f0d001d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 62
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 64
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_SUPPORT_GOOGLE_NOW_INIT_VALUE"

    const/16 v2, 0x19

    .line 65
    const v3, 0x7f0d001e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 64
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW_INIT_VALUE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 66
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_SUPPORT_GOOGLE_HOTWORD"

    const/16 v2, 0x1a

    .line 67
    const v3, 0x7f0d001f

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 66
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_HOTWORD:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 68
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_SUPPORT_DIRECTV_MODE"

    const/16 v2, 0x1b

    .line 69
    const v3, 0x7f0d0020

    .line 70
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 68
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_DIRECTV_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 71
    new-instance v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    const-string v1, "FEATURE_SUPPORT_SETTING_DDT_THEME"

    const/16 v2, 0x1c

    .line 72
    const v3, 0x7f0d000d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/util/LGHomeFeature$Config;-><init>(Ljava/lang/String;IIZ)V

    .line 71
    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_SETTING_DDT_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    .line 14
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/lge/launcher3/util/LGHomeFeature$Config;

    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_KNOCK_OFF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_SMARTBULLETIN_DOWNLOADABLE_PROVIDER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN_NESTED_SCROLL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_WALLPAPER_IN_OPTIMUS_THEME_RESOURCE_FILE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DATA_CONNECTION_DIALOG_VDF:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_WIDGET_BLUR:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_HOMESCREEN_BLUR:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_ICONCHANGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_BACKUP_RESTORE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_ALLAPPSLESS:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_PHOTOICON_LAYOUT:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_QMEMOPLUS_PANEL:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_DYNAMIC_GRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SKT_PHONE_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_CARRIER_WALLPAPER_ITEM:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_AKA_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_RECENT_UNINSTALL_APP:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_WALLPAPER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_DYNAMICGRID:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_EDITMODE_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SORT_APPS_BY_NAME_IN_MULTIUSER:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_ADD_NEW_ITEMS_ON_LAST_PAGE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_UNINSTALL_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_NOW_INIT_VALUE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_GOOGLE_HOTWORD:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_DIRECTV_MODE:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_SUPPORT_SETTING_DDT_THEME:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->ENUM$VALUES:[Lcom/lge/launcher3/util/LGHomeFeature$Config;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .registers 5

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->mResoureID:I

    .line 80
    iput-boolean p4, p0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->mDefaultValue:Z

    .line 81
    iput-boolean p4, p0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->mValue:Z

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/util/LGHomeFeature$Config;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/util/LGHomeFeature$Config;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->ENUM$VALUES:[Lcom/lge/launcher3/util/LGHomeFeature$Config;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()Z
    .registers 4

    .prologue
    .line 93
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->access$0()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LGHomeFeature is not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 96
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 102
    :cond_1a
    iget-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->mValue:Z

    return v0

    .line 98
    :cond_1d
    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->mResoureID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->mValue:Z
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    .line 90
    :goto_c
    return-void

    .line 88
    :catch_d
    move-exception v0

    iget-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->mDefaultValue:Z

    iput-boolean v0, p0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->mValue:Z

    goto :goto_c
.end method

.method public setValue(Z)V
    .registers 2

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lge/launcher3/util/LGHomeFeature$Config;->mValue:Z

    .line 107
    return-void
.end method
