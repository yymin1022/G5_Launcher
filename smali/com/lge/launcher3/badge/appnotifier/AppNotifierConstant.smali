.class public Lcom/lge/launcher3/badge/appnotifier/AppNotifierConstant;
.super Ljava/lang/Object;
.source "AppNotifierConstant.java"


# static fields
.field public static DEFAULT_MAX_NUMBER:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const/16 v0, 0x3e7

    sput v0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierConstant;->DEFAULT_MAX_NUMBER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
