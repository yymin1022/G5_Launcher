.class public final enum Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;
.super Ljava/lang/Enum;
.source "LauncherScrollerWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/LauncherScrollerWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollerFinishType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABORT_ANIMATION:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

.field public static final enum FORCE_FINISHED:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

.field public static final enum TIME_EXPIRATION:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    const-string v1, "TIME_EXPIRATION"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->TIME_EXPIRATION:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    new-instance v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    const-string v1, "FORCE_FINISHED"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->FORCE_FINISHED:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    new-instance v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    const-string v1, "ABORT_ANIMATION"

    invoke-direct {v0, v1, v4}, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->ABORT_ANIMATION:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    sget-object v1, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->TIME_EXPIRATION:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->FORCE_FINISHED:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->ABORT_ANIMATION:Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->ENUM$VALUES:[Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;->ENUM$VALUES:[Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/LauncherScrollerWatcher$ScrollerFinishType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
