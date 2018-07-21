.class public final enum Lcom/lge/mdm/LGMDMManager$CertType;
.super Ljava/lang/Enum;
.source "LGMDMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/LGMDMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/LGMDMManager$CertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/LGMDMManager$CertType;

.field public static final enum ALL:Lcom/lge/mdm/LGMDMManager$CertType;

.field public static final enum CACERT:Lcom/lge/mdm/LGMDMManager$CertType;

.field public static final enum USRCERT:Lcom/lge/mdm/LGMDMManager$CertType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 785
    new-instance v0, Lcom/lge/mdm/LGMDMManager$CertType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/LGMDMManager$CertType;-><init>(Ljava/lang/String;I)V

    .line 789
    sput-object v0, Lcom/lge/mdm/LGMDMManager$CertType;->ALL:Lcom/lge/mdm/LGMDMManager$CertType;

    .line 790
    new-instance v0, Lcom/lge/mdm/LGMDMManager$CertType;

    const-string/jumbo v1, "CACERT"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/LGMDMManager$CertType;-><init>(Ljava/lang/String;I)V

    .line 794
    sput-object v0, Lcom/lge/mdm/LGMDMManager$CertType;->CACERT:Lcom/lge/mdm/LGMDMManager$CertType;

    .line 795
    new-instance v0, Lcom/lge/mdm/LGMDMManager$CertType;

    const-string/jumbo v1, "USRCERT"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/LGMDMManager$CertType;-><init>(Ljava/lang/String;I)V

    .line 799
    sput-object v0, Lcom/lge/mdm/LGMDMManager$CertType;->USRCERT:Lcom/lge/mdm/LGMDMManager$CertType;

    .line 784
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/mdm/LGMDMManager$CertType;

    sget-object v1, Lcom/lge/mdm/LGMDMManager$CertType;->ALL:Lcom/lge/mdm/LGMDMManager$CertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/LGMDMManager$CertType;->CACERT:Lcom/lge/mdm/LGMDMManager$CertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/LGMDMManager$CertType;->USRCERT:Lcom/lge/mdm/LGMDMManager$CertType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/mdm/LGMDMManager$CertType;->$VALUES:[Lcom/lge/mdm/LGMDMManager$CertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 784
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/LGMDMManager$CertType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 784
    const-class v0, Lcom/lge/mdm/LGMDMManager$CertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/LGMDMManager$CertType;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/LGMDMManager$CertType;
    .registers 1

    .prologue
    .line 784
    sget-object v0, Lcom/lge/mdm/LGMDMManager$CertType;->$VALUES:[Lcom/lge/mdm/LGMDMManager$CertType;

    return-object v0
.end method
