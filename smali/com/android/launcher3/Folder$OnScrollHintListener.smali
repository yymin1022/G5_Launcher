.class Lcom/android/launcher3/Folder$OnScrollHintListener;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollHintListener"
.end annotation


# instance fields
.field private final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field final synthetic this$0:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1436
    iput-object p2, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 1437
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 1444
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iget v0, v0, Lcom/android/launcher3/Folder;->mCurrentScrollDir:I

    if-nez v0, :cond_30

    .line 1445
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->scrollLeft()V

    .line 1446
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iput v2, v0, Lcom/android/launcher3/Folder;->mScrollHintDir:I

    .line 1454
    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iput v2, v0, Lcom/android/launcher3/Folder;->mCurrentScrollDir:I

    .line 1457
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/android/launcher3/Folder$OnScrollFinishedListener;

    iget-object v2, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iget-object v3, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/Folder$OnScrollFinishedListener;-><init>(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 1458
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 1459
    :cond_2f
    return-void

    .line 1447
    :cond_30
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iget v0, v0, Lcom/android/launcher3/Folder;->mCurrentScrollDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 1448
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->scrollRight()V

    .line 1449
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/Folder;

    iput v2, v0, Lcom/android/launcher3/Folder;->mScrollHintDir:I

    goto :goto_12
.end method
