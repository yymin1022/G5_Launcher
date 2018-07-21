.class Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$2;
.super Ljava/lang/Object;
.source "WallpaperListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->setAdatper(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;

.field private final synthetic val$resInfo:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$2;->this$0:Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;

    iput-object p2, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$2;->val$resInfo:Ljava/util/List;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$2;->val$resInfo:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$2;->val$resInfo:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :try_start_20
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$2;->this$0:Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_26} :catch_27

    .line 97
    :goto_26
    return-void

    .line 94
    :catch_27
    move-exception v0

    .line 95
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_26
.end method
