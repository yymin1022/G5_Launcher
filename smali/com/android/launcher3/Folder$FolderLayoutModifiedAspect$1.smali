.class public Lcom/android/launcher3/Folder$FolderLayoutModifiedAspect$1;
.super Ljava/lang/Object;
.source "FolderLayoutModifiedAspect.aj"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Folder;->ajc$interMethod$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$setFolderTitle(Lcom/android/launcher3/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Folder;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Folder$FolderLayoutModifiedAspect$1;->this$0:Lcom/android/launcher3/Folder;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher3/Folder$FolderLayoutModifiedAspect$1;->this$0:Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderLayoutModifiedAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderLayoutModifiedAspect$com_android_launcher3_Folder$startFolderPlus(Lcom/android/launcher3/Folder;)V

    .line 48
    return-void
.end method
