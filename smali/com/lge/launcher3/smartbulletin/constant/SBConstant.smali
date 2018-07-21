.class public Lcom/lge/launcher3/smartbulletin/constant/SBConstant;
.super Ljava/lang/Object;
.source "SBConstant.java"


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x401

.field public static final DEBUG:Z

.field public static final DEBUG_TEST_NOTI_INTENT:Z = false

.field public static final HOME_WIDGET:I = 0x1

.field public static final KEYGUARD_WIDGET:I = 0x2

.field public static final SBNOTI_OBJERVER_NOTI:I = 0x3e8

.field public static final SMARTBULLETIN_FLUTTER_ITEM:Ljava/lang/String; = "smartbulletin_flutter_item"

.field public static final SMARTBULLETIN_GOTO_PROVIDER_NAME:Ljava/lang/String; = "smartbulletin_goto_provider_name"

.field public static final SMARTBULLETIN_PROVIDER_DEFAULT_ACTIVITY:Ljava/lang/String; = "smartbulletin_provider_default_activity"

.field public static final SMARTBULLETIN_WIDGET:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/lge/launcher3/config/LGFeatureConfig;->FEATURE_ENABLE_LGLOG:Z

    sput-boolean v0, Lcom/lge/launcher3/smartbulletin/constant/SBConstant;->DEBUG:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
