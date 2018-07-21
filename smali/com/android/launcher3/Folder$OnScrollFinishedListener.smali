.class Lcom/android/launcher3/Folder$OnScrollFinishedListener;
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
    name = "OnScrollFinishedListener"
.end annotation


# instance fields
.field private final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field final synthetic this$0:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/android/launcher3/Folder$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    iput-object p2, p0, Lcom/android/launcher3/Folder$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 1468
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 5

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/launcher3/Folder$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/Folder;

    iget-object v1, p0, Lcom/android/launcher3/Folder$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Folder;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;I)V

    .line 1477
    return-void
.end method
