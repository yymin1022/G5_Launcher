.class public final enum Lcom/android/launcher3/Launcher$State;
.super Ljava/lang/Enum;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/Launcher$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPS:Lcom/android/launcher3/Launcher$State;

.field public static final enum APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

.field public static final enum CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

.field public static final enum DYNAMIC_GRID_OVERVIEW:Lcom/android/launcher3/Launcher$State;

.field private static final synthetic ENUM$VALUES:[Lcom/android/launcher3/Launcher$State;

.field public static final enum NONE:Lcom/android/launcher3/Launcher$State;

.field public static final enum WIDGETS:Lcom/android/launcher3/Launcher$State;

.field public static final enum WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

.field public static final enum WORKSPACE:Lcom/android/launcher3/Launcher$State;

.field public static final enum WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string v1, "WORKSPACE"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string v1, "WORKSPACE_SPRING_LOADED"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string v1, "APPS"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string v1, "APPS_SPRING_LOADED"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    .line 228
    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string v1, "WIDGETS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string v1, "WIDGETS_SPRING_LOADED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string v1, "CLEAN_VIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string v1, "DYNAMIC_GRID_OVERVIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->DYNAMIC_GRID_OVERVIEW:Lcom/android/launcher3/Launcher$State;

    .line 227
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/launcher3/Launcher$State;->CLEAN_VIEW:Lcom/android/launcher3/Launcher$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/launcher3/Launcher$State;->DYNAMIC_GRID_OVERVIEW:Lcom/android/launcher3/Launcher$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/Launcher$State;->ENUM$VALUES:[Lcom/android/launcher3/Launcher$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/Launcher$State;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/android/launcher3/Launcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher$State;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/Launcher$State;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher$State;->ENUM$VALUES:[Lcom/android/launcher3/Launcher$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/launcher3/Launcher$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
