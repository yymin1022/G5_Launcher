.class Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private appImage:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;->this$0:Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;->appImage:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;->appImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/launcher3/wallpaperlist/WallpaperListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    return-object v0
.end method
