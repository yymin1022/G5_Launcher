.class Lcom/lge/launcher3/util/DefaultWorkspaceChecker$SktMode;
.super Ljava/lang/Object;
.source "DefaultWorkspaceChecker.java"

# interfaces
.implements Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/util/DefaultWorkspaceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SktMode"
.end annotation


# static fields
.field private static final SKT_PHONE_MODE_NONE:I = 0x2

.field private static final SKT_PHONE_MODE_T_PHONE:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatching(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone_mode_set"

    .line 117
    const/4 v4, 0x2

    .line 116
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 119
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v2, v0, :cond_1b

    move v2, v0

    :goto_18
    if-ne v3, v2, :cond_1d

    :goto_1a
    return v0

    :cond_1b
    move v2, v1

    goto :goto_18

    :cond_1d
    move v0, v1

    goto :goto_1a
.end method
