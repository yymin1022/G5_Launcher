.class Lcom/lge/launcher3/folder/FolderColorAspect$FolderColorAspect$1;
.super Ljava/lang/Object;
.source "FolderColorAspect.aj"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$6$b0936ab7(Lorg/aspectj/lang/JoinPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/folder/FolderColorAspect;

.field private final synthetic val$folder:Lcom/android/launcher3/Folder;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/folder/FolderColorAspect;Lcom/android/launcher3/Folder;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderColorAspect$FolderColorAspect$1;->this$0:Lcom/lge/launcher3/folder/FolderColorAspect;

    iput-object p2, p0, Lcom/lge/launcher3/folder/FolderColorAspect$FolderColorAspect$1;->val$folder:Lcom/android/launcher3/Folder;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderColorAspect$FolderColorAspect$1;->val$folder:Lcom/android/launcher3/Folder;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_Folder$callRenameDialog(Lcom/android/launcher3/Folder;)V

    .line 212
    return-void
.end method
