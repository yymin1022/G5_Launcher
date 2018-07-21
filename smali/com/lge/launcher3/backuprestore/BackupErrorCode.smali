.class public final enum Lcom/lge/launcher3/backuprestore/BackupErrorCode;
.super Ljava/lang/Enum;
.source "BackupErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/backuprestore/BackupErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/backuprestore/BackupErrorCode;

.field public static final enum FRAMEWORK_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

.field public static final enum INVALID_FRAMEWORK_API:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

.field public static final enum INVALID_LBF:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

.field public static final enum NO_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

.field public static final enum SECURITY_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;


# instance fields
.field private final message:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    const-string v1, "NO_ERROR"

    const-string v2, "success"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->NO_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 5
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    const-string v1, "INVALID_FRAMEWORK_API"

    const/16 v2, 0xc8

    const-string v3, "invalid framework api"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INVALID_FRAMEWORK_API:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 6
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    const-string v1, "SECURITY_ERR"

    const/16 v2, 0xc9

    const-string v3, "security exception"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->SECURITY_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 7
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    const-string v1, "FRAMEWORK_ERR"

    const/16 v2, 0xca

    const-string v3, "backup framework error"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->FRAMEWORK_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 8
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    const-string v1, "INVALID_LBF"

    const/16 v2, 0xcb

    const-string v3, "invalid backup file"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INVALID_LBF:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 9
    new-instance v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x5

    const/16 v3, 0xcc

    const-string v4, "internal error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/launcher3/backuprestore/BackupErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INTERNAL_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->NO_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INVALID_FRAMEWORK_API:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->SECURITY_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->FRAMEWORK_ERR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INVALID_LBF:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->INTERNAL_ERROR:Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->ENUM$VALUES:[Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->value:I

    .line 13
    iput-object p4, p0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->message:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/backuprestore/BackupErrorCode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/backuprestore/BackupErrorCode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->ENUM$VALUES:[Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/backuprestore/BackupErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->message:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/lge/launcher3/backuprestore/BackupErrorCode;->value:I

    return v0
.end method
