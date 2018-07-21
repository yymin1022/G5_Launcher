.class public Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserActivity;
.super Landroid/app/Activity;
.source "WallpaperChooserActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 53
    const/16 v0, 0x64

    if-ne p1, v0, :cond_10

    .line 54
    if-ne p2, v1, :cond_10

    .line 55
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/utils/LGWallpaperCache;->clearWallpaperCache()V

    .line 56
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserActivity;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserActivity;->finish()V

    .line 60
    :cond_10
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 4

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 35
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 39
    invoke-static {p0}, Lcom/lge/launcher3/util/LGHomeFeature;->init(Ljava/lang/Object;)V

    .line 40
    sget v0, Lcom/lge/internal/R$style;->Theme_LGE_White_Wallpaper:I

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserActivity;->setTheme(I)V

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 44
    const v1, 0x7f0e00ec

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 45
    if-nez v0, :cond_2b

    .line 46
    invoke-static {}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;->newInstance()Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserDialogFragment;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/lge/launcher3/wallpaperpicker/WallpaperChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 49
    :cond_2b
    return-void
.end method
