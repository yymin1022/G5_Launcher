.class Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GroupWidgetItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;

.field private widgetCell:Lcom/lge/launcher3/widgettray/LGWidgetCell;

.field private widgetPreview:Lcom/lge/launcher3/widgettray/WidgetsImageView;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->this$0:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;Lcom/lge/launcher3/widgettray/WidgetsImageView;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->widgetPreview:Lcom/lge/launcher3/widgettray/WidgetsImageView;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;Lcom/lge/launcher3/widgettray/LGWidgetCell;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->widgetCell:Lcom/lge/launcher3/widgettray/LGWidgetCell;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;)Lcom/lge/launcher3/widgettray/LGWidgetCell;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->widgetCell:Lcom/lge/launcher3/widgettray/LGWidgetCell;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;)Lcom/lge/launcher3/widgettray/WidgetsImageView;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->widgetPreview:Lcom/lge/launcher3/widgettray/WidgetsImageView;

    return-object v0
.end method
