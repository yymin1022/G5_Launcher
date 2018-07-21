.class public Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;
.super Ljava/lang/Object;
.source "HiddenApps.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/hideapps/HiddenApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiddenApp"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private componentName:Landroid/content/ComponentName;

.field private userHandle:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    new-instance v0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp$1;

    invoke-direct {v0}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp$1;-><init>()V

    sput-object v0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->componentName:Landroid/content/ComponentName;

    .line 84
    iput-object p2, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->componentName:Landroid/content/ComponentName;

    .line 89
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 102
    instance-of v1, p1, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    if-eqz v1, :cond_1e

    .line 103
    check-cast p1, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;

    .line 104
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 105
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 104
    const/4 v0, 0x1

    .line 107
    :cond_1e
    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/compat/UserHandleCompat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 129
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HiddenApps$HiddenApp;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    return-void
.end method
