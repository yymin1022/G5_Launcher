.class Lcom/lge/mdm/controller/LGMDMEmailController$Record;
.super Ljava/lang/Object;
.source "LGMDMEmailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMEmailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Record"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field callback:Lcom/lge/mdm/config/ILGMDMEmailConfigStateListener;

.field events:I

.field pkgForDebug:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
