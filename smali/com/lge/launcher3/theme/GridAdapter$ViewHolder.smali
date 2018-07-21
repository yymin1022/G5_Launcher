.class public Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public deleteView:Landroid/widget/ImageView;

.field public imageView:Landroid/widget/ImageView;

.field public mPackageName:Ljava/lang/String;

.field public selectView:Landroid/widget/ImageView;

.field public textTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lge/launcher3/theme/GridAdapter;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/theme/GridAdapter;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->this$0:Lcom/lge/launcher3/theme/GridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
