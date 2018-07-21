.class Lcom/android/launcher3/Launcher$31;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->finishBindingItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field private final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;J)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$31;->this$0:Lcom/android/launcher3/Launcher;

    iput-wide p2, p0, Lcom/android/launcher3/Launcher$31;->val$screenId:J

    .line 4262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4265
    iget-object v0, p0, Lcom/android/launcher3/Launcher$31;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v2, p0, Lcom/android/launcher3/Launcher$31;->val$screenId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->snapToScreenId(J)V

    .line 4266
    return-void
.end method
