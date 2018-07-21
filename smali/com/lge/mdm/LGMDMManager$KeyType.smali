.class public final enum Lcom/lge/mdm/LGMDMManager$KeyType;
.super Ljava/lang/Enum;
.source "LGMDMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/LGMDMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/mdm/LGMDMManager$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/mdm/LGMDMManager$KeyType;

.field public static final enum BACK:Lcom/lge/mdm/LGMDMManager$KeyType;

.field public static final enum DUALWINDOW:Lcom/lge/mdm/LGMDMManager$KeyType;

.field public static final enum HOME:Lcom/lge/mdm/LGMDMManager$KeyType;

.field public static final enum MENU:Lcom/lge/mdm/LGMDMManager$KeyType;

.field public static final enum NOTIFICATION:Lcom/lge/mdm/LGMDMManager$KeyType;

.field public static final enum QMEMO:Lcom/lge/mdm/LGMDMManager$KeyType;

.field public static final enum QSLIDE:Lcom/lge/mdm/LGMDMManager$KeyType;

.field public static final enum RECENT:Lcom/lge/mdm/LGMDMManager$KeyType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 721
    new-instance v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    const-string/jumbo v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/lge/mdm/LGMDMManager$KeyType;-><init>(Ljava/lang/String;I)V

    .line 725
    sput-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->HOME:Lcom/lge/mdm/LGMDMManager$KeyType;

    .line 726
    new-instance v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    const-string/jumbo v1, "BACK"

    invoke-direct {v0, v1, v4}, Lcom/lge/mdm/LGMDMManager$KeyType;-><init>(Ljava/lang/String;I)V

    .line 730
    sput-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->BACK:Lcom/lge/mdm/LGMDMManager$KeyType;

    .line 731
    new-instance v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    const-string/jumbo v1, "MENU"

    invoke-direct {v0, v1, v5}, Lcom/lge/mdm/LGMDMManager$KeyType;-><init>(Ljava/lang/String;I)V

    .line 735
    sput-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->MENU:Lcom/lge/mdm/LGMDMManager$KeyType;

    .line 736
    new-instance v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    const-string/jumbo v1, "RECENT"

    invoke-direct {v0, v1, v6}, Lcom/lge/mdm/LGMDMManager$KeyType;-><init>(Ljava/lang/String;I)V

    .line 740
    sput-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->RECENT:Lcom/lge/mdm/LGMDMManager$KeyType;

    .line 741
    new-instance v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    const-string/jumbo v1, "NOTIFICATION"

    invoke-direct {v0, v1, v7}, Lcom/lge/mdm/LGMDMManager$KeyType;-><init>(Ljava/lang/String;I)V

    .line 745
    sput-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->NOTIFICATION:Lcom/lge/mdm/LGMDMManager$KeyType;

    .line 746
    new-instance v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    const-string/jumbo v1, "QSLIDE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/LGMDMManager$KeyType;-><init>(Ljava/lang/String;I)V

    .line 750
    sput-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->QSLIDE:Lcom/lge/mdm/LGMDMManager$KeyType;

    .line 751
    new-instance v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    const-string/jumbo v1, "QMEMO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/LGMDMManager$KeyType;-><init>(Ljava/lang/String;I)V

    .line 755
    sput-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->QMEMO:Lcom/lge/mdm/LGMDMManager$KeyType;

    .line 756
    new-instance v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    const-string/jumbo v1, "DUALWINDOW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lge/mdm/LGMDMManager$KeyType;-><init>(Ljava/lang/String;I)V

    .line 760
    sput-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->DUALWINDOW:Lcom/lge/mdm/LGMDMManager$KeyType;

    .line 720
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lge/mdm/LGMDMManager$KeyType;

    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->HOME:Lcom/lge/mdm/LGMDMManager$KeyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->BACK:Lcom/lge/mdm/LGMDMManager$KeyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->MENU:Lcom/lge/mdm/LGMDMManager$KeyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->RECENT:Lcom/lge/mdm/LGMDMManager$KeyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->NOTIFICATION:Lcom/lge/mdm/LGMDMManager$KeyType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->QSLIDE:Lcom/lge/mdm/LGMDMManager$KeyType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->QMEMO:Lcom/lge/mdm/LGMDMManager$KeyType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/mdm/LGMDMManager$KeyType;->DUALWINDOW:Lcom/lge/mdm/LGMDMManager$KeyType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->$VALUES:[Lcom/lge/mdm/LGMDMManager$KeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 720
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/mdm/LGMDMManager$KeyType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 720
    const-class v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0
.end method

.method public static values()[Lcom/lge/mdm/LGMDMManager$KeyType;
    .registers 1

    .prologue
    .line 720
    sget-object v0, Lcom/lge/mdm/LGMDMManager$KeyType;->$VALUES:[Lcom/lge/mdm/LGMDMManager$KeyType;

    return-object v0
.end method
