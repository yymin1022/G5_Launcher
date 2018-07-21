.class public final enum Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;
.super Ljava/lang/Enum;
.source "LGMDMApnConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMApnConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bearer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

.field public static final enum LTE:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

.field public static final enum Unspecified:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

.field public static final enum eHRPD:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    const-string/jumbo v1, "LTE"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;-><init>(Ljava/lang/String;I)V

    .line 286
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->LTE:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    .line 287
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    const-string/jumbo v1, "eHRPD"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;-><init>(Ljava/lang/String;I)V

    .line 292
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->eHRPD:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    .line 293
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    const-string/jumbo v1, "Unspecified"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;-><init>(Ljava/lang/String;I)V

    .line 298
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->Unspecified:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    .line 280
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->LTE:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->eHRPD:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->Unspecified:Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->$VALUES:[Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 280
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 280
    const-class v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;
    .registers 1

    .prologue
    .line 280
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;->$VALUES:[Lcom/lge/mdm/config/LGMDMApnConfiguration$Bearer;

    return-object v0
.end method
