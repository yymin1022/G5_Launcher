.class Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$1;
.super Ljava/lang/Object;
.source "WallpaperListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


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
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$1;->this$0:Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$1;->this$0:Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->access$0(Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;Ljava/lang/String;)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$1;->this$0:Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;->access$0(Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment;Ljava/lang/String;)I

    move-result v1

    .line 71
    if-ge v0, v1, :cond_18

    .line 72
    const/4 v0, -0x1

    .line 76
    :goto_17
    return v0

    .line 73
    :cond_18
    if-le v0, v1, :cond_1c

    .line 74
    const/4 v0, 0x1

    goto :goto_17

    .line 76
    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/wallpaperlist/WallpaperListFragment$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
