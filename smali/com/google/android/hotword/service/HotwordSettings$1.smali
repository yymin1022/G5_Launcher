.class final Lcom/google/android/hotword/service/HotwordSettings$1;
.super Ljava/lang/Object;
.source "HotwordSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/hotword/service/HotwordSettings;
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
        "Lcom/google/android/hotword/service/HotwordSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/hotword/service/HotwordSettings;
    .registers 3

    .prologue
    .line 13
    new-instance v0, Lcom/google/android/hotword/service/HotwordSettings;

    invoke-direct {v0, p1}, Lcom/google/android/hotword/service/HotwordSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/hotword/service/HotwordSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/hotword/service/HotwordSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/hotword/service/HotwordSettings;
    .registers 3

    .prologue
    .line 18
    new-array v0, p1, [Lcom/google/android/hotword/service/HotwordSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/hotword/service/HotwordSettings$1;->newArray(I)[Lcom/google/android/hotword/service/HotwordSettings;

    move-result-object v0

    return-object v0
.end method
