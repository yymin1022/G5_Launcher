.class public Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;
.super Ljava/lang/Object;
.source "LiveIconAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->ajc$interMethod$com_lge_launcher3_liveicon_LiveIconAspect$com_android_launcher3_LauncherModel$onLiveIconUpdated(Lcom/android/launcher3/LauncherModel;Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field private final synthetic val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field private final synthetic val$updatedShortcuts:Ljava/util/ArrayList;

.field private final synthetic val$userFinal:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;->val$updatedShortcuts:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;->val$userFinal:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;->val$callbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_18

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;->val$updatedShortcuts:Ljava/util/ArrayList;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LiveIconAspect$1;->val$userFinal:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 132
    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 135
    :cond_18
    return-void
.end method
