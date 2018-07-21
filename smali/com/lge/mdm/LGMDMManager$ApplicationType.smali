.class public final enum Lcom/lge/mdm/LGMDMManager$ApplicationType;
.super Ljava/lang/Enum;
.source "LGMDMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/LGMDMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/LGMDMManager$ApplicationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/LGMDMManager$ApplicationType;

.field public static final enum ANDROIDMARKET:Lcom/lge/mdm/LGMDMManager$ApplicationType;

.field public static final enum LGBACKUP:Lcom/lge/mdm/LGMDMManager$ApplicationType;

.field public static final enum SETTING:Lcom/lge/mdm/LGMDMManager$ApplicationType;

.field public static final enum TASKMANAGER:Lcom/lge/mdm/LGMDMManager$ApplicationType;

.field public static final enum VOICEAPPS:Lcom/lge/mdm/LGMDMManager$ApplicationType;

.field public static final enum VOICEDIALER:Lcom/lge/mdm/LGMDMManager$ApplicationType;

.field public static final enum YOUTUBE:Lcom/lge/mdm/LGMDMManager$ApplicationType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    new-instance v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;

    const-string/jumbo v1, "ANDROIDMARKET"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/LGMDMManager$ApplicationType;-><init>(Ljava/lang/String;I)V

    .line 325
    sput-object v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ANDROIDMARKET:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    .line 326
    new-instance v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;

    const-string/jumbo v1, "YOUTUBE"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/LGMDMManager$ApplicationType;-><init>(Ljava/lang/String;I)V

    .line 330
    sput-object v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;->YOUTUBE:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    .line 331
    new-instance v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;

    const-string/jumbo v1, "VOICEDIALER"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/LGMDMManager$ApplicationType;-><init>(Ljava/lang/String;I)V

    .line 335
    sput-object v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;->VOICEDIALER:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    .line 336
    new-instance v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;

    const-string/jumbo v1, "SETTING"

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/LGMDMManager$ApplicationType;-><init>(Ljava/lang/String;I)V

    .line 340
    sput-object v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;->SETTING:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    .line 341
    new-instance v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;

    const-string/jumbo v1, "TASKMANAGER"

    invoke-direct {v0, v1, v7}, Lcom/lge/mdm/LGMDMManager$ApplicationType;-><init>(Ljava/lang/String;I)V

    .line 345
    sput-object v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;->TASKMANAGER:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    .line 346
    new-instance v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;

    const-string/jumbo v1, "LGBACKUP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/LGMDMManager$ApplicationType;-><init>(Ljava/lang/String;I)V

    .line 350
    sput-object v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;->LGBACKUP:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    .line 351
    new-instance v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;

    const-string/jumbo v1, "VOICEAPPS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/LGMDMManager$ApplicationType;-><init>(Ljava/lang/String;I)V

    .line 355
    sput-object v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;->VOICEAPPS:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    .line 320
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lge/mdm/LGMDMManager$ApplicationType;

    sget-object v1, Lcom/lge/mdm/LGMDMManager$ApplicationType;->ANDROIDMARKET:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/LGMDMManager$ApplicationType;->YOUTUBE:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/LGMDMManager$ApplicationType;->VOICEDIALER:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mdm/LGMDMManager$ApplicationType;->SETTING:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/mdm/LGMDMManager$ApplicationType;->TASKMANAGER:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/mdm/LGMDMManager$ApplicationType;->LGBACKUP:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/LGMDMManager$ApplicationType;->VOICEAPPS:Lcom/lge/mdm/LGMDMManager$ApplicationType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;->$VALUES:[Lcom/lge/mdm/LGMDMManager$ApplicationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/LGMDMManager$ApplicationType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 320
    const-class v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/LGMDMManager$ApplicationType;
    .registers 1

    .prologue
    .line 320
    sget-object v0, Lcom/lge/mdm/LGMDMManager$ApplicationType;->$VALUES:[Lcom/lge/mdm/LGMDMManager$ApplicationType;

    return-object v0
.end method
