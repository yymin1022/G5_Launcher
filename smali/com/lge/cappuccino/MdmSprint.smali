.class public Lcom/lge/cappuccino/MdmSprint;
.super Ljava/lang/Object;
.source "MdmSprint.java"


# static fields
.field private static sMdm:Lcom/lge/cappuccino/IMdmSprint;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x0

    sput-object v7, Lcom/lge/cappuccino/MdmSprint;->sMdm:Lcom/lge/cappuccino/IMdmSprint;

    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.lge.mdm.jar"

    const-class v5, Lcom/lge/cappuccino/Mdm;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_10
    const-string v4, "com.lge.mdm.frameworks.MDMInterfaceImplSprint"

    const/4 v5, 0x1

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/cappuccino/IMdmSprint;

    sput-object v3, Lcom/lge/cappuccino/MdmSprint;->sMdm:Lcom/lge/cappuccino/IMdmSprint;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v2

    const-string v4, "Mdm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library loading failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v7, Lcom/lge/cappuccino/MdmSprint;->sMdm:Lcom/lge/cappuccino/IMdmSprint;

    goto :goto_1f
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/cappuccino/IMdmSprint;
    .registers 1

    sget-object v0, Lcom/lge/cappuccino/MdmSprint;->sMdm:Lcom/lge/cappuccino/IMdmSprint;

    return-object v0
.end method
