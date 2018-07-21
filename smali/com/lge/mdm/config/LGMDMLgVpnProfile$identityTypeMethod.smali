.class public final Lcom/lge/mdm/config/LGMDMLgVpnProfile$identityTypeMethod;
.super Ljava/lang/Object;
.source "LGMDMLgVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/config/LGMDMLgVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "identityTypeMethod"
.end annotation


# static fields
.field public static final BASE:I = 0xc8

.field public static final DISTINGUISHED_NAME:I = 0xc8

.field public static final DNS_NAME:I = 0xc9

.field public static final E_MAIL_ADDRESS:I = 0xcb

.field public static final KEY_ID:I = 0xca

.field public static final STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 154
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DISTINGUISHED_NAME"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "DNS_NAME"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "KEY_ID"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "E_MAIL_ADDRESS"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 154
    sput-object v0, Lcom/lge/mdm/config/LGMDMLgVpnProfile$identityTypeMethod;->STRINGS:[Ljava/lang/String;

    .line 123
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
