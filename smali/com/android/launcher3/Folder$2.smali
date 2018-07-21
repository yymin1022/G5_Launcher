.class Lcom/android/launcher3/Folder$2;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Folder;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 10

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    iget v1, v1, Lcom/android/launcher3/Folder;->mEmptyCellRank:I

    iget-object v2, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    iget v2, v2, Lcom/android/launcher3/Folder;->mTargetRank:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/FolderPagedView;->realTimeReorder(II)V

    .line 705
    iget-object v0, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    iget-object v1, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    iget v1, v1, Lcom/android/launcher3/Folder;->mTargetRank:I

    iput v1, v0, Lcom/android/launcher3/Folder;->mEmptyCellRank:I

    .line 706
    iget-object v0, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    .line 707
    const/16 v1, 0x20

    .line 708
    iget-object v2, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0106

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 709
    iget-object v6, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    iget v6, v6, Lcom/android/launcher3/Folder;->mTargetRank:I

    iget-object v7, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    iget-object v7, v7, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget v7, v7, Lcom/android/launcher3/FolderPagedView;->mMaxCountX:I

    rem-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 710
    iget-object v6, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    iget v6, v6, Lcom/android/launcher3/Folder;->mTargetRank:I

    iget-object v7, p0, Lcom/android/launcher3/Folder$2;->this$0:Lcom/android/launcher3/Folder;

    iget-object v7, v7, Lcom/android/launcher3/Folder;->mContent:Lcom/android/launcher3/FolderPagedView;

    iget v7, v7, Lcom/android/launcher3/FolderPagedView;->mMaxCountY:I

    div-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 708
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 711
    return-void
.end method
