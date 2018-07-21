.class public Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;
.super Landroid/widget/LinearLayout;
.source "InitialGuidePageLayout.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 54
    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0e0043

    invoke-virtual {p0, v1}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    if-eqz v0, :cond_1d

    if-nez v1, :cond_1e

    .line 68
    :cond_1d
    :goto_1d
    return-void

    .line 60
    :cond_1e
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    .line 64
    invoke-virtual {p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 67
    invoke-virtual {p0}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/lge/launcher3/initialguide/InitialGuidePageLayout;->setPadding(IIII)V

    goto :goto_1d
.end method
