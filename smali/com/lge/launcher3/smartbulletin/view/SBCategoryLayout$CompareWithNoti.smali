.class public Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$CompareWithNoti;
.super Ljava/lang/Object;
.source "SBCategoryLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompareWithNoti"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$CompareWithNoti;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 7

    .prologue
    .line 36
    check-cast p1, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 37
    check-cast p2, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 38
    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    .line 39
    :cond_8
    const/4 v0, 0x0

    .line 47
    :goto_9
    return v0

    .line 42
    :cond_a
    invoke-virtual {p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getNotiTime()J

    move-result-wide v0

    .line 43
    invoke-virtual {p2}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->getNotiTime()J

    move-result-wide v2

    .line 44
    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    .line 45
    const/4 v0, -0x1

    goto :goto_9

    .line 47
    :cond_18
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$CompareWithNoti;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
