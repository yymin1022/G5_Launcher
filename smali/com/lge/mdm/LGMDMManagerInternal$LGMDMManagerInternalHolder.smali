.class Lcom/lge/mdm/LGMDMManagerInternal$LGMDMManagerInternalHolder;
.super Ljava/lang/Object;
.source "LGMDMManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/LGMDMManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LGMDMManagerInternalHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/lge/mdm/LGMDMManagerInternal;


# direct methods
.method static synthetic -get0()Lcom/lge/mdm/LGMDMManagerInternal;
    .registers 1

    sget-object v0, Lcom/lge/mdm/LGMDMManagerInternal$LGMDMManagerInternalHolder;->INSTANCE:Lcom/lge/mdm/LGMDMManagerInternal;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lcom/lge/mdm/LGMDMManagerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lge/mdm/LGMDMManagerInternal;-><init>(Lcom/lge/mdm/LGMDMManagerInternal;)V

    sput-object v0, Lcom/lge/mdm/LGMDMManagerInternal$LGMDMManagerInternalHolder;->INSTANCE:Lcom/lge/mdm/LGMDMManagerInternal;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
