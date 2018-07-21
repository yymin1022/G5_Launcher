.class Lcom/android/launcher3/Folder$7;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Folder;->animateOpen()V
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
    iput-object p1, p0, Lcom/android/launcher3/Folder$7;->this$0:Lcom/android/launcher3/Folder;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/android/launcher3/Folder$7;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/Folder$7;->this$0:Lcom/android/launcher3/Folder;

    iget-object v0, v0, Lcom/android/launcher3/Folder;->mContentWrapper:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 532
    iget-object v0, p0, Lcom/android/launcher3/Folder$7;->this$0:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->setFocusOnFirstChild()V

    .line 533
    return-void
.end method
