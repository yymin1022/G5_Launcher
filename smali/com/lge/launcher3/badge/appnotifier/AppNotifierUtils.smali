.class public Lcom/lge/launcher3/badge/appnotifier/AppNotifierUtils;
.super Ljava/lang/Object;
.source "AppNotifierUtils.java"


# static fields
.field protected static final NAVER_LINE_SECRET_PACKAGE:Ljava/lang/String; = "jp.naver.line.android"

.field protected static final SECRET_MODE_CONSTANT:Ljava/lang/String; = "secret_mode"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isSecretModeOn(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "secret_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 13
    if-ne v2, v0, :cond_f

    .line 16
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method
