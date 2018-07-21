.class Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$1;
.super Ljava/lang/Object;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

.field private final synthetic val$gallery:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$1;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    iput-object p2, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$1;->val$gallery:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$1;->this$0:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    iget-object v1, p0, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment$1;->val$gallery:Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;

    invoke-virtual {v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserGallery;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->access$7(Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;I)V

    .line 140
    return-void
.end method
