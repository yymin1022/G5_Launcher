.class Lcom/lge/launcher3/folder/FolderPicker$1;
.super Ljava/lang/Object;
.source "FolderPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderPicker$1;->this$0:Lcom/lge/launcher3/folder/FolderPicker;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 75
    if-eqz p2, :cond_c

    .line 76
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderPicker$1;->this$0:Lcom/lge/launcher3/folder/FolderPicker;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderPicker;->access$0(Lcom/lge/launcher3/folder/FolderPicker;)Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;->setFocusedColorView(Landroid/view/View;)V

    .line 80
    :goto_b
    return-void

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderPicker$1;->this$0:Lcom/lge/launcher3/folder/FolderPicker;

    invoke-static {v0}, Lcom/lge/launcher3/folder/FolderPicker;->access$0(Lcom/lge/launcher3/folder/FolderPicker;)Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/launcher3/folder/FolderPicker$LGFolderPickerListener;->resetFocusedColorView()V

    goto :goto_b
.end method
