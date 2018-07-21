.class public Lcom/android/launcher3/compat/PackageInstallerCompatV16;
.super Lcom/android/launcher3/compat/PackageInstallerCompat;
.source "PackageInstallerCompatV16.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/launcher3/compat/PackageInstallerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public updateAndGetActiveSessionCache()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method
