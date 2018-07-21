.class public Lcom/android/launcher3/Launcher$CleanViewItds$1;
.super Ljava/lang/Thread;
.source "CleanViewItds.aj"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->ajc$interMethod$com_lge_launcher3_nativeitds_CleanViewItds$com_android_launcher3_Launcher$sendCleanViewActivatedIntent(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$CleanViewItds$1;->val$activity:Landroid/app/Activity;

    .line 272
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    const-string v1, "com.lge.livewallpaper.cleanview.ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/android/launcher3/Launcher$CleanViewItds$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    return-void
.end method
