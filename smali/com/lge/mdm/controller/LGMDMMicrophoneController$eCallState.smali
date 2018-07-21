.class final enum Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;
.super Ljava/lang/Enum;
.source "LGMDMMicrophoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMMicrophoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "eCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field public static final enum ACTIVE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field public static final enum ALERTING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field public static final enum DIALING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field public static final enum DISCONNECTED:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field public static final enum DISCONNECTING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field public static final enum HOLDING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field public static final enum IDLE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field public static final enum INCOMING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

.field public static final enum WAITING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->IDLE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const-string/jumbo v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->ACTIVE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const-string/jumbo v1, "HOLDING"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->HOLDING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const-string/jumbo v1, "DIALING"

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->DIALING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const-string/jumbo v1, "ALERTING"

    invoke-direct {v0, v1, v7}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->ALERTING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const-string/jumbo v1, "INCOMING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->INCOMING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const-string/jumbo v1, "WAITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->WAITING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const-string/jumbo v1, "DISCONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->DISCONNECTED:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    new-instance v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const-string/jumbo v1, "DISCONNECTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->DISCONNECTING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->IDLE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->ACTIVE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->HOLDING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->DIALING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->ALERTING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->INCOMING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->WAITING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->DISCONNECTED:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->DISCONNECTING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->$VALUES:[Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->$VALUES:[Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    return-object v0
.end method
