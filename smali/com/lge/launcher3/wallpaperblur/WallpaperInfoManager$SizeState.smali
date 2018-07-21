.class final enum Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;
.super Ljava/lang/Enum;
.source "WallpaperInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SizeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

.field public static final enum EQ_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

.field public static final enum EQ_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

.field public static final enum EQ_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

.field public static final enum LA_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

.field public static final enum LA_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

.field public static final enum LA_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

.field public static final enum SM_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

.field public static final enum SM_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

.field public static final enum SM_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    const-string v1, "SM_WIDTH_SM_HEIGHT"

    invoke-direct {v0, v1, v3}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    const-string v1, "SM_WIDTH_EQ_HEIGHT"

    invoke-direct {v0, v1, v4}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    const-string v1, "SM_WIDTH_LA_HEIGHT"

    invoke-direct {v0, v1, v5}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    .line 33
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    const-string v1, "EQ_WIDTH_SM_HEIGHT"

    invoke-direct {v0, v1, v6}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    const-string v1, "EQ_WIDTH_EQ_HEIGHT"

    invoke-direct {v0, v1, v7}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    const-string v1, "EQ_WIDTH_LA_HEIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    .line 34
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    const-string v1, "LA_WIDTH_SM_HEIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    const-string v1, "LA_WIDTH_EQ_HEIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    new-instance v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    const-string v1, "LA_WIDTH_LA_HEIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->SM_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->EQ_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_SM_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_EQ_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->LA_WIDTH_LA_HEIGHT:Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ENUM$VALUES:[Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;->ENUM$VALUES:[Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/wallpaperblur/WallpaperInfoManager$SizeState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
