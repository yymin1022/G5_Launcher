.class Lcom/lge/mdm/LGMDMManager$LGMDMManagerHolder;
.super Ljava/lang/Object;
.source "LGMDMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/LGMDMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LGMDMManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/lge/mdm/LGMDMManager;


# direct methods
.method static synthetic -get0()Lcom/lge/mdm/LGMDMManager;
    .registers 1

    sget-object v0, Lcom/lge/mdm/LGMDMManager$LGMDMManagerHolder;->INSTANCE:Lcom/lge/mdm/LGMDMManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 126
    new-instance v0, Lcom/lge/mdm/LGMDMManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lge/mdm/LGMDMManager;-><init>(Lcom/lge/mdm/LGMDMManager;)V

    sput-object v0, Lcom/lge/mdm/LGMDMManager$LGMDMManagerHolder;->INSTANCE:Lcom/lge/mdm/LGMDMManager;

    .line 125
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
