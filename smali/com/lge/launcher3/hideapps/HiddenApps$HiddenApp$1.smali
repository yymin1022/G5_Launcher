.class Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp$1;
.super Ljava/lang/Object;
.source "HiddenApps.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;
    .registers 3

    .prologue
    .line 136
    new-instance v0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    invoke-direct {v0, p1}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;
    .registers 3

    .prologue
    .line 141
    new-array v0, p1, [Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp$1;->newArray(I)[Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    move-result-object v0

    return-object v0
.end method
