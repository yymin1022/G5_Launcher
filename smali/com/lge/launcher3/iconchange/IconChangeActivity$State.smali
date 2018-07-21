.class final enum Lcom/lge/launcher3/iconchange/IconChangeActivity$State;
.super Ljava/lang/Enum;
.source "IconChangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/iconchange/IconChangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/iconchange/IconChangeActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

.field public static final enum HIDDEN:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

.field public static final enum SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

.field public static final enum SELECT_PHOTO_ICON_SIZE:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->HIDDEN:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    const-string v1, "SELECT_ICON"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    const-string v1, "SELECT_PHOTO_ICON_SIZE"

    invoke-direct {v0, v1, v4}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_PHOTO_ICON_SIZE:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    new-instance v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    const-string v1, "DELETE_ICON"

    invoke-direct {v0, v1, v5}, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->DELETE_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->HIDDEN:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_PHOTO_ICON_SIZE:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->DELETE_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->ENUM$VALUES:[Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/iconchange/IconChangeActivity$State;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/iconchange/IconChangeActivity$State;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->ENUM$VALUES:[Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
