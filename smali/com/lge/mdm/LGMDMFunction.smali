.class public Lcom/lge/mdm/LGMDMFunction;
.super Ljava/lang/Object;
.source "LGMDMFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mdm/LGMDMFunction$FunctionTable;
    }
.end annotation


# static fields
.field private static FuncTableList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LGMDMFunction "

.field private static final VER10000:I = 0x2710

.field private static final VER20000:I = 0x4e20

.field private static final VER20100:I = 0x4e84

.field private static final VER20200:I = 0x4ee8

.field private static final VER20300:I = 0x4f4c

.field private static final VER30000:I = 0x7530

.field private static final VER30100:I = 0x7594

.field private static final VER30200:I = 0x75f8

.field private static final VER40000:I = 0x9c40

.field private static final VER40100:I = 0x9ca4

.field private static final VER40200:I = 0x9d08

.field private static final VER50000:I = 0xc350

.field private static final VER50100:I = 0xc3b4

.field private static final VER50200:I = 0xc418


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lge/mdm/LGMDMFunction;->FuncTableList:Ljava/util/List;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAvailableMDMFunctionList()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 676
    sget-object v1, Lcom/lge/mdm/LGMDMFunction;->FuncTableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 677
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/lge/mdm/LGMDMFunction;->getFunctionTableAgainstVersion(I)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/lge/mdm/LGMDMFunction;->FuncTableList:Ljava/util/List;

    .line 678
    const-string/jumbo v1, "LGMDMFunction "

    const-string/jumbo v2, "initializing MDM function list table..."

    invoke-static {v1, v2}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_18
    sget-object v1, Lcom/lge/mdm/LGMDMFunction;->FuncTableList:Ljava/util/List;

    sget-object v2, Lcom/lge/mdm/LGMDMFunction;->FuncTableList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 682
    .local v0, "strResult":[Ljava/lang/String;
    return-object v0
.end method

.method static getAvailableMDMFunctionList(I)[Ljava/lang/String;
    .registers 4
    .param p0, "version"    # I

    .prologue
    .line 693
    invoke-static {p0}, Lcom/lge/mdm/LGMDMFunction;->getFunctionTableAgainstVersion(I)Ljava/util/List;

    move-result-object v0

    .line 694
    .local v0, "funcTableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 695
    .local v1, "strResult":[Ljava/lang/String;
    return-object v1
.end method

.method public static getFunctionTableAgainstVersion(I)Ljava/util/List;
    .registers 14
    .param p0, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v1, "funcTableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 631
    .local v0, "currentMDMVersion":I
    invoke-static {}, Lcom/lge/mdm/util/LGMDMVersionInfo;->getMDMVersion()Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, "strVersion":Ljava/lang/String;
    const-string/jumbo v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 633
    .local v4, "splitVersion":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v7, :cond_64

    .line 634
    const-string/jumbo v6, "%02d%02d%02d"

    new-array v7, v7, [Ljava/lang/Object;

    .line 635
    aget-object v8, v4, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aget-object v8, v4, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    .line 636
    aget-object v8, v4, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    .line 634
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "mdmVersionValue":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 638
    const-string/jumbo v6, "LGMDMFunction "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v3    # "mdmVersionValue":Ljava/lang/String;
    :cond_64
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_65
    sget-object v6, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTable:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    array-length v6, v6

    if-ge v2, v6, :cond_c3

    .line 641
    sget-object v6, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTable:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getVersion()I

    move-result v6

    if-gt v6, v0, :cond_c0

    .line 642
    if-eq p0, v9, :cond_80

    sget-object v6, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTable:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getVersion()I

    move-result v6

    if-ne v6, p0, :cond_c0

    .line 643
    :cond_80
    sget-object v6, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTable:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getFuncName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    const-string/jumbo v6, "LGMDMFunction "

    .line 646
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Added version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTable:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 647
    const-string/jumbo v8, ", Added function name : "

    .line 646
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 648
    sget-object v8, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTable:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getFuncName()Ljava/lang/String;

    move-result-object v8

    .line 646
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 644
    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_c0
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 653
    :cond_c3
    invoke-static {}, Lcom/lge/mdm/util/LGMDMConfig;->isCountryKr()Z

    move-result v6

    if-eqz v6, :cond_128

    .line 654
    const/4 v2, 0x0

    :goto_ca
    sget-object v6, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTableKR:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    array-length v6, v6

    if-ge v2, v6, :cond_128

    .line 655
    sget-object v6, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTableKR:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getVersion()I

    move-result v6

    if-gt v6, v0, :cond_125

    .line 656
    if-eq p0, v9, :cond_e5

    sget-object v6, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTable:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getVersion()I

    move-result v6

    if-ne v6, p0, :cond_125

    .line 657
    :cond_e5
    sget-object v6, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTableKR:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getFuncName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    const-string/jumbo v6, "LGMDMFunction "

    .line 660
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Added version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTableKR:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 661
    const-string/jumbo v8, ", Added function name : "

    .line 660
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 662
    sget-object v8, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->aFunctionTableKR:[Lcom/lge/mdm/LGMDMFunction$FunctionTable;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/lge/mdm/LGMDMFunction$FunctionTable;->getFuncName()Ljava/lang/String;

    move-result-object v8

    .line 660
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 658
    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_125
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    .line 667
    :cond_128
    return-object v1
.end method

.method static isAvailableMDMFunction(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mdm_function_name"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-static {}, Lcom/lge/mdm/LGMDMFunction;->getAvailableMDMFunctionList()[Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "strResult":[Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 708
    const/4 v1, 0x1

    return v1

    .line 710
    :cond_e
    const/4 v1, 0x0

    return v1
.end method
