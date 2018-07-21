.class Lcom/android/launcher3/Launcher$24;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$addAnimated:Ljava/util/ArrayList;

.field private final synthetic val$addNotAnimated:Ljava/util/ArrayList;

.field private final synthetic val$addedApps:Ljava/util/ArrayList;

.field private final synthetic val$newScreens:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$24;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$24;->val$newScreens:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$24;->val$addNotAnimated:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$24;->val$addAnimated:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/launcher3/Launcher$24;->val$addedApps:Ljava/util/ArrayList;

    .line 3913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/android/launcher3/Launcher$24;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$24;->val$newScreens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/Launcher$24;->val$addNotAnimated:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/Launcher$24;->val$addAnimated:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/Launcher$24;->val$addedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3916
    return-void
.end method
