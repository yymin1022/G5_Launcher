.class public Lcom/lge/launcher3/smartbulletin/lib/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final SMARTBULLETIN_BACKGROUND_COLOR:Ljava/lang/String; = "background_color"

.field public static final SMARTBULLETIN_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field public static final SMARTBULLETIN_CONFIGURATION_SET_COLOR_INTENT:Ljava/lang/String; = "com.lge.launcher2.smartbulletin.configuration.color"

.field public static final SMARTBULLETIN_TITLE_COLOR:Ljava/lang/String; = "title_color"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/Intent;
    .registers 8

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v1, "component_name"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string v1, "background_color"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    const-string v1, "title_color"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    return-object v0
.end method

.method public static setColor(Landroid/content/Context;Landroid/content/ComponentName;II)V
    .registers 5

    .prologue
    .line 15
    const-string v0, "com.lge.launcher2.smartbulletin.configuration.color"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/lge/launcher3/smartbulletin/lib/Configuration;->generateIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/Intent;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    return-void
.end method
