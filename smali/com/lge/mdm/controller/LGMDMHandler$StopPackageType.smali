.class Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;
.super Ljava/lang/Object;
.source "LGMDMHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopPackageType"
.end annotation


# instance fields
.field blacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field feature:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field pid:I

.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMHandler;

.field userHandle:I

.field whitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/lge/mdm/controller/LGMDMHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMHandler;

    .prologue
    const/4 v0, 0x0

    .line 1326
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->this$0:Lcom/lge/mdm/controller/LGMDMHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->whitelist:Ljava/util/List;

    .line 1328
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->blacklist:Ljava/util/List;

    .line 1329
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->feature:Ljava/lang/String;

    .line 1330
    iput-object v0, p0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->packageName:Ljava/lang/String;

    .line 1331
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;->pid:I

    .line 1326
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMHandler;Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mdm/controller/LGMDMHandler$StopPackageType;-><init>(Lcom/lge/mdm/controller/LGMDMHandler;)V

    return-void
.end method
