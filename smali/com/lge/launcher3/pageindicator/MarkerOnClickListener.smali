.class public Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;
.super Ljava/lang/Object;
.source "MarkerOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private index:I

.field public mClickIndexArray:[I

.field private mListenr:Lcom/lge/launcher3/pageindicator/PageIndicatorListener;


# direct methods
.method public constructor <init>(ILcom/lge/launcher3/pageindicator/PageIndicatorListener;[I)V
    .registers 4

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;->index:I

    .line 13
    iput-object p2, p0, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;->mListenr:Lcom/lge/launcher3/pageindicator/PageIndicatorListener;

    .line 14
    iput-object p3, p0, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;->mClickIndexArray:[I

    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;->mListenr:Lcom/lge/launcher3/pageindicator/PageIndicatorListener;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;->index:I

    if-ltz v0, :cond_13

    .line 20
    iget-object v0, p0, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;->mListenr:Lcom/lge/launcher3/pageindicator/PageIndicatorListener;

    iget-object v1, p0, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;->mClickIndexArray:[I

    iget v2, p0, Lcom/lge/launcher3/pageindicator/MarkerOnClickListener;->index:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/lge/launcher3/pageindicator/PageIndicatorListener;->onChangePage(I)V

    .line 22
    :cond_13
    return-void
.end method
