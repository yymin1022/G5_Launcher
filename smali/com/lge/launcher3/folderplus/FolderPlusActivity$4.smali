.class Lcom/lge/launcher3/folderplus/FolderPlusActivity$4;
.super Ljava/lang/Object;
.source "FolderPlusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/folderplus/FolderPlusActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/folderplus/FolderPlusActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/folderplus/FolderPlusActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity$4;->this$0:Lcom/lge/launcher3/folderplus/FolderPlusActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity$4;->this$0:Lcom/lge/launcher3/folderplus/FolderPlusActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->apply()V

    .line 154
    return-void
.end method
