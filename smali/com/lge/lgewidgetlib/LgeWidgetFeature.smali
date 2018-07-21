.class public Lcom/lge/lgewidgetlib/LgeWidgetFeature;
.super Ljava/lang/Object;
.source "LgeWidgetFeature.java"


# static fields
.field private static final API_LEVEL:I = 0x2

.field private static final VERSION:Ljava/lang/String; = "5.3"

.field public static sFEATURE_ENABLE_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 10
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 9
    const/4 v0, 0x0

    :goto_15
    sput-boolean v0, Lcom/lge/lgewidgetlib/LgeWidgetFeature;->sFEATURE_ENABLE_LOG:Z

    .line 10
    return-void

    .line 9
    :cond_18
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiLevel()I
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x2

    return v0
.end method

.method public static getLgeWidgetLibVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    const-string v0, "5.3"

    return-object v0
.end method

.method public static isCustomClassLoaderSupportPackage(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 13
    const-string v0, "com.lge.concierge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 14
    const/4 v0, 0x1

    .line 16
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPackageWithExtView(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 21
    const-string v0, "com.lge.concierge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    const/4 v0, 0x1

    .line 24
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
