.class public final Lcom/lge/mdm/config/LGMDMLgVpnProfile$connectionTypeMethod;
.super Ljava/lang/Object;
.source "LGMDMLgVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "connectionTypeMethod"
.end annotation


# static fields
.field public static final BASE:I = 0x64

.field public static final CERTIFICATE_IKEv1:I = 0x66

.field public static final CERTIFICATE_IKEv2:I = 0x67

.field public static final EAP_AND_CERTIFICATE:I = 0x68

.field public static final L2TP_CERTIFICATE_IKEv1:I = 0x6a

.field public static final L2TP_PRE_SHARED_KEY_IKEv1:I = 0x69

.field public static final PRE_SHARED_KEY_IKEv1:I = 0x64

.field public static final PRE_SHARED_KEY_IKEv2:I = 0x65

.field public static final SECURE_ID_IKEv1:I = 0x6b

.field public static final STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 107
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "PRE_SHARED_KEY_IKEv1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "PRE_SHARED_KEY_IKEv2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "CERTIFICATE_IKEv1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "CERTIFICATE_IKEv2"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "EAP_AND_CERTIFICATE"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "L2TP_PRE_SHARED_KEY_IKEv1"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "L2TP_CERTIFICATE_IKEv1"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "SECURE_ID_IKEv1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 107
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$connectionTypeMethod;->STRINGS:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
