.class public Lcom/lge/mdm/controller/LGMDMSKTSSMController;
.super Ljava/lang/Object;
.source "LGMDMSKTSSMController.java"


# static fields
.field private static instance:Lcom/lge/mdm/controller/LGMDMSKTSSMController;


# instance fields
.field private final mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mdm/controller/LGMDMSKTSSMController;->instance:Lcom/lge/mdm/controller/LGMDMSKTSSMController;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMATClientConnector;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMSKTSSMController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/lge/mdm/controller/LGMDMSKTSSMController;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/lge/mdm/controller/LGMDMSKTSSMController;->instance:Lcom/lge/mdm/controller/LGMDMSKTSSMController;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/lge/mdm/controller/LGMDMSKTSSMController;

    invoke-direct {v0}, Lcom/lge/mdm/controller/LGMDMSKTSSMController;-><init>()V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMSKTSSMController;->instance:Lcom/lge/mdm/controller/LGMDMSKTSSMController;

    .line 21
    :cond_b
    sget-object v0, Lcom/lge/mdm/controller/LGMDMSKTSSMController;->instance:Lcom/lge/mdm/controller/LGMDMSKTSSMController;

    return-object v0
.end method


# virtual methods
.method protected getATClientTrueRepartValue(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 31
    const-string/jumbo v0, ""

    .line 32
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMSKTSSMController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-virtual {v1}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->getATClinet()Ljava/lang/String;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method protected setATClientTrueRepartValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "ret":I
    iget-object v1, p0, Lcom/lge/mdm/controller/LGMDMSKTSSMController;->mLGMDMATClientConnector:Lcom/lge/mdm/controller/LGMDMATClientConnector;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/controller/LGMDMATClientConnector;->setATClient(Ljava/lang/String;)I

    move-result v0

    .line 27
    return v0
.end method
