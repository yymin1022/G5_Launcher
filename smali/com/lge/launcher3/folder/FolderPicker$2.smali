.class Lcom/lge/launcher3/folder/FolderPicker$2;
.super Ljava/lang/Object;
.source "FolderPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/folder/FolderPicker;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/folder/FolderPicker;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/folder/FolderPicker;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderPicker$2;->this$0:Lcom/lge/launcher3/folder/FolderPicker;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderPicker$2;->this$0:Lcom/lge/launcher3/folder/FolderPicker;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderPicker;->access$0(Lcom/lge/launcher3/folder/FolderPicker;)Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 86
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderPicker$2;->this$0:Lcom/lge/launcher3/folder/FolderPicker;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderPicker;->access$0(Lcom/lge/launcher3/folder/FolderPicker;)Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;->setSelectedColorView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderPicker$2;->this$0:Lcom/lge/launcher3/folder/FolderPicker;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderPicker;->access$0(Lcom/lge/launcher3/folder/FolderPicker;)Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;->requestFocusOnPalette()V

    .line 89
    :cond_1a
    return-void
.end method
