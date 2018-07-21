.class Lcom/lge/launcher3/droptarget/UninstallerActivity$DialogInfo;
.super Ljava/lang/Object;
.source "UninstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/droptarget/UninstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DialogInfo"
.end annotation


# instance fields
.field activityInfo:Landroid/content/pm/ActivityInfo;

.field allUsers:Z

.field appInfo:Landroid/content/pm/ApplicationInfo;

.field callback:Landroid/os/IBinder;

.field startedBy:Ljava/lang/String;

.field user:Landroid/os/UserHandle;

.field vpl:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
