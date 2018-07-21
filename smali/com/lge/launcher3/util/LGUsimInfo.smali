.class public Lcom/lge/launcher3/util/LGUsimInfo;
.super Ljava/lang/Object;
.source "LGUsimInfo.java"


# static fields
.field static final TAG:Ljava/lang/String; = "LGUsimInfo"

.field private static sLGUsimInfo:Lcom/lge/launcher3/util/LGUsimInfo;


# instance fields
.field private mTelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/util/LGUsimInfo;->sLGUsimInfo:Lcom/lge/launcher3/util/LGUsimInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 22
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/launcher3/util/LGUsimInfo;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/lge/launcher3/util/LGUsimInfo;->sLGUsimInfo:Lcom/lge/launcher3/util/LGUsimInfo;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/lge/launcher3/util/LGUsimInfo;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/util/LGUsimInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/launcher3/util/LGUsimInfo;->sLGUsimInfo:Lcom/lge/launcher3/util/LGUsimInfo;

    .line 28
    :cond_b
    sget-object v0, Lcom/lge/launcher3/util/LGUsimInfo;->sLGUsimInfo:Lcom/lge/launcher3/util/LGUsimInfo;

    return-object v0
.end method


# virtual methods
.method public equalComparatorGIDWithLength(Ljava/lang/String;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getGid()Ljava/lang/String;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_9

    if-nez p1, :cond_a

    .line 156
    :cond_9
    :goto_9
    return v0

    .line 151
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_29

    .line 152
    const-string v2, "LGUsimInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gidValue length is = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 156
    :cond_29
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public equalComparatorMcc(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_8

    if-nez p1, :cond_a

    .line 126
    :cond_8
    const/4 v0, 0x0

    .line 129
    :goto_9
    return v0

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public equalComparatorMnc(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_8

    if-nez p1, :cond_a

    .line 137
    :cond_8
    const/4 v0, 0x0

    .line 140
    :goto_9
    return v0

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public getGid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    const-string v0, "gid1"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    move-object v0, v1

    .line 85
    :cond_14
    :goto_14
    return-object v0

    .line 84
    :cond_15
    const-string v0, "LGUsimInfo"

    const-string v2, "mTelephony is null"

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 85
    goto :goto_14
.end method

.method public getMcc()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1c

    .line 38
    iget-object v1, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_15

    .line 45
    :cond_14
    :goto_14
    return-object v0

    .line 42
    :cond_15
    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 44
    :cond_1c
    const-string v1, "LGUsimInfo"

    const-string v2, "mTelephony is null"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public getMnc()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1b

    .line 50
    iget-object v1, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_15

    .line 57
    :cond_14
    :goto_14
    return-object v0

    .line 54
    :cond_15
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 56
    :cond_1b
    const-string v1, "LGUsimInfo"

    const-string v2, "mTelephony is null"

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public getSP()I
    .registers 6

    .prologue
    const/16 v3, 0x9

    const/4 v0, -0x1

    .line 90
    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_27

    .line 94
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_28

    .line 95
    const-string v2, "LGUsimInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "imsiValue length is = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_27
    :goto_27
    return v0

    .line 98
    :cond_28
    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_32} :catch_34

    move-result v0

    goto :goto_27

    .line 99
    :catch_34
    move-exception v1

    .line 100
    const-string v2, "LGUsimInfo"

    const-string v3, "IMSI value is not integer"

    invoke-static {v2, v3, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method public getSimState()I
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSpn()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_15

    .line 62
    iget-object v0, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    move-object v0, v1

    .line 69
    :cond_14
    :goto_14
    return-object v0

    .line 68
    :cond_15
    const-string v0, "LGUsimInfo"

    const-string v2, "mTelephony is null"

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 69
    goto :goto_14
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/lge/launcher3/util/LGUsimInfo;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 33
    sput-object v0, Lcom/lge/launcher3/util/LGUsimInfo;->sLGUsimInfo:Lcom/lge/launcher3/util/LGUsimInfo;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[USIM] Mcc : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Mnc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Spn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getSpn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Gid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getGid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string v1, ", Imsi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/util/LGUsimInfo;->getSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
