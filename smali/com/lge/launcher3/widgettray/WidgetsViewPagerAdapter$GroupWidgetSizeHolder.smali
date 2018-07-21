.class Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;
.super Ljava/lang/Object;
.source "WidgetsViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupWidgetSizeHolder"
.end annotation


# instance fields
.field private size:I

.field final synthetic this$0:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;->this$0:Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;I)V
    .registers 2

    .prologue
    .line 249
    iput p1, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;->size:I

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;)I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/lge/launcher3/widgettray/WidgetsViewPagerAdapter$GroupWidgetSizeHolder;->size:I

    return v0
.end method
