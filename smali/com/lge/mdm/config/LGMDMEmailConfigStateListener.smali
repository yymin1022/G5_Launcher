.class public Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;
.super Ljava/lang/Object;
.source "LGMDMEmailConfigStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;,
        Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;
    }
.end annotation


# static fields
.field public static final ADD_EMAIL_CERT_CONFIG:I = 0x100

.field public static final ADD_EXCHANGE_CONFIG:I = 0x8

.field public static final ADD_POPIMAP_CONFIG:I = 0x1

.field public static final DELETE_EMAIL_CERT_CONFIG:I = 0x200

.field public static final DELETE_EXCHANGE_CONFIG:I = 0x20

.field public static final DELETE_EXCHANGE_CONFIG_ADMIN:I = 0x80

.field public static final DELETE_POPIMAP_CONFIG:I = 0x4

.field public static final DELETE_POPIMAP_CONFIG_ADMIN:I = 0x40

.field public static final LISTEN_NONE:I = 0x0

.field public static final MODIFY_EXCHANGE_CONFIG:I = 0x10

.field public static final MODIFY_POPIMAP_CONFIG:I = 0x2

.field public static final TAG:Ljava/lang/String; = "LGMDMEmailConfigStateListener"


# instance fields
.field public callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

.field mHandler:Landroid/os/Handler;

.field returnVal:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;

    invoke-direct {v0, p0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$1;-><init>(Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;)V

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->returnVal:Z

    .line 274
    new-instance v0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;

    invoke-direct {v0, p0}, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener$2;-><init>(Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;)V

    iput-object v0, p0, Lcom/lge/mdm/config/LGMDMEmailConfigStateListener;->mHandler:Landroid/os/Handler;

    .line 8
    return-void
.end method


# virtual methods
.method public onAddEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)Z
    .registers 3
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public onAddEmailCertConfig(Lcom/lge/mdm/config/LGMDMEmailCertConfig;)Z
    .registers 3
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEmailCertConfig;

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public onAddPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)Z
    .registers 3
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public onDeleteEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)Z
    .registers 3
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public onDeleteEXCHANGEConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onDeleteEmailCertConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1, "sEmailCertID"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public onDeletePOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)Z
    .registers 3
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onDeletePOPIMAPConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public onModifyEXCHANGEConfig(Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;)Z
    .registers 3
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMEXCHANGEConfig;

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onModifyPOPIMAPConfig(Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;)Z
    .registers 3
    .param p1, "config"    # Lcom/lge/mdm/config/LGMDMPOPIMAPConfig;

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method
