.class public final Lcom/lge/mdm/config/LGMDMLgVpnProfile$eapMethodMethod;
.super Ljava/lang/Object;
.source "LGMDMLgVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "eapMethodMethod"
.end annotation


# static fields
.field public static final BASE:I = 0x190

.field public static final EAP_MD5:I = 0x190

.field public static final EAP_MSCHAPv2:I = 0x191

.field public static final STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 271
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "EAP_MD5"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP_MSCHAPv2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$eapMethodMethod;->STRINGS:[Ljava/lang/String;

    .line 250
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
