.class public Lcom/lge/mdm/util/LGMDMPackageManager;
.super Ljava/lang/Object;
.source "LGMDMPackageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGMDMPackageManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRealSignatureKey(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v9, 0x0

    .line 27
    const-string/jumbo v6, "LGMDMPackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[getRealSignatureKey]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", userHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v3, 0x0

    .line 29
    .local v3, "platformSignatureKey":[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 30
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    if-eqz p0, :cond_2f

    if-nez v4, :cond_30

    .line 31
    :cond_2f
    return-object v9

    .line 34
    :cond_30
    const/16 v6, 0x40

    :try_start_32
    invoke-interface {v4, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 36
    .local v5, "sigs":[Landroid/content/pm/Signature;
    if-eqz v5, :cond_59

    array-length v6, v5

    if-lez v6, :cond_59

    .line 37
    array-length v6, v5

    new-array v3, v6, [Ljava/lang/String;

    .line 38
    .local v3, "platformSignatureKey":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    array-length v6, v5

    if-ge v2, v6, :cond_59

    .line 39
    aget-object v0, v5, v2

    .line 40
    .local v0, "apk_sig":Landroid/content/pm/Signature;
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_4c} :catch_4f

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 43
    .end local v0    # "apk_sig":Landroid/content/pm/Signature;
    .end local v2    # "i":I
    .end local v3    # "platformSignatureKey":[Ljava/lang/String;
    .end local v5    # "sigs":[Landroid/content/pm/Signature;
    :catch_4f
    move-exception v1

    .line 44
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "LGMDMPackageManager"

    const-string/jumbo v7, "Failed talking with PackageManager service"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_59
    return-object v3
.end method
