.class Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;
.super Ljava/lang/Object;
.source "RUReinstallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReinstallViewHolder"
.end annotation


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private reinstall:Landroid/widget/Button;

.field final synthetic this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->this$0:Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->appIcon:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->appName:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;Landroid/widget/Button;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->reinstall:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$3(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->appIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->appName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUReinstallAdapter$ReinstallViewHolder;->reinstall:Landroid/widget/Button;

    return-object v0
.end method
