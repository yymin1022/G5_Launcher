.class Lcom/android/launcher3/Workspace$18;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field private final synthetic val$operator:Lcom/android/launcher3/Workspace$ItemOperator;

.field private final synthetic val$value:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$ItemOperator;[Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$18;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$18;->val$operator:Lcom/android/launcher3/Workspace$ItemOperator;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$18;->val$value:[Landroid/view/View;

    .line 4459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 4462
    iget-object v1, p0, Lcom/android/launcher3/Workspace$18;->val$operator:Lcom/android/launcher3/Workspace$ItemOperator;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4463
    iget-object v1, p0, Lcom/android/launcher3/Workspace$18;->val$value:[Landroid/view/View;

    aput-object p2, v1, v0

    .line 4464
    const/4 v0, 0x1

    .line 4466
    :cond_e
    return v0
.end method
