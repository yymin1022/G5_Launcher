.class public Lcom/android/launcher3/SpringLoadedDragController;
.super Ljava/lang/Object;
.source "SpringLoadedDragController.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

.field final ENTER_SPRING_LOAD_HOVER_TIME:J

.field final EXIT_SPRING_LOAD_HOVER_TIME:J

.field mAlarm:Lcom/android/launcher3/Alarm;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mScreen:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->ENTER_SPRING_LOAD_HOVER_TIME:J

    .line 22
    const-wide/16 v0, 0x3b6

    iput-wide v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

    .line 23
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->EXIT_SPRING_LOAD_HOVER_TIME:J

    .line 32
    iput-object p1, p0, Lcom/android/launcher3/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 33
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    .line 34
    iget-object v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 39
    return-void
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1a

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/launcher3/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 55
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 61
    :cond_19
    :goto_19
    return-void

    .line 59
    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragController;->cancelDrag()V

    goto :goto_19
.end method

.method public setAlarm(Lcom/android/launcher3/CellLayout;)V
    .registers 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 44
    iget-object v2, p0, Lcom/android/launcher3/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    if-nez p1, :cond_11

    const-wide/16 v0, 0x3b6

    :goto_b
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    .line 47
    return-void

    .line 45
    :cond_11
    const-wide/16 v0, 0x1f4

    goto :goto_b
.end method
