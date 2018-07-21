.class public Lcom/android/launcher3/widget/WidgetsRowViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WidgetsRowViewHolder.java"


# instance fields
.field mContent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    .line 31
    return-void
.end method


# virtual methods
.method getContent()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method
