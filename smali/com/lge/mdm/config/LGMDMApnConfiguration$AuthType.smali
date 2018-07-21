.class public final enum Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;
.super Ljava/lang/Enum;
.source "LGMDMApnConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMApnConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

.field public static final enum CHAP:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

.field public static final enum NONE:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

.field public static final enum PAP:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

.field public static final enum PAPCHAP:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;-><init>(Ljava/lang/String;I)V

    .line 140
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->NONE:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    .line 141
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    const-string/jumbo v1, "PAP"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;-><init>(Ljava/lang/String;I)V

    .line 146
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->PAP:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    .line 147
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    const-string/jumbo v1, "CHAP"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;-><init>(Ljava/lang/String;I)V

    .line 152
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->CHAP:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    .line 153
    new-instance v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    const-string/jumbo v1, "PAPCHAP"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->PAPCHAP:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->NONE:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->PAP:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->CHAP:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->PAPCHAP:Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->$VALUES:[Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 134
    const-class v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;
    .registers 1

    .prologue
    .line 134
    sget-object v0, Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;->$VALUES:[Lcom/lge/mdm/config/LGMDMApnConfiguration$AuthType;

    return-object v0
.end method
