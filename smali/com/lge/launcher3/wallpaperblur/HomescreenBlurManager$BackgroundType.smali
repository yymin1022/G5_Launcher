.class public final enum Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;
.super Ljava/lang/Enum;
.source "HomescreenBlurManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_ROOTVIEW:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

.field public static final enum TOP_DRAGLAYER:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;


# instance fields
.field private mIsSupportLiveWallpaperMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    const-string v1, "TOP_DRAGLAYER"

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->TOP_DRAGLAYER:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    new-instance v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    const-string v1, "BOTTOM_ROOTVIEW"

    invoke-direct {v0, v1, v3, v2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->BOTTOM_ROOTVIEW:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->TOP_DRAGLAYER:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->BOTTOM_ROOTVIEW:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->ENUM$VALUES:[Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->mIsSupportLiveWallpaperMode:Z

    .line 49
    iput-boolean p3, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->mIsSupportLiveWallpaperMode:Z

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->ENUM$VALUES:[Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public isSupportLiveWallpaperMode()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->mIsSupportLiveWallpaperMode:Z

    return v0
.end method
