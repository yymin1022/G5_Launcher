.class Lcom/android/launcher3/CellLayout$ItemConfiguration;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemConfiguration"
.end annotation


# instance fields
.field dragViewSpanX:I

.field dragViewSpanY:I

.field dragViewX:I

.field dragViewY:I

.field intersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field isSolution:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private savedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field sortedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    .prologue
    .line 2522
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    .line 2524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    .line 2525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    .line 2527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;Lcom/android/launcher3/CellLayout$CellAndSpan;)V
    .registers 6

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher3/CellLayout$CellAndSpan;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {v1, v2}, Lcom/android/launcher3/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2548
    return-void
.end method

.method area()I
    .registers 3

    .prologue
    .line 2551
    iget v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method restore()V
    .registers 5

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2542
    return-void

    .line 2539
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2540
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$CellAndSpan;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$CellAndSpan;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/CellLayout$CellAndSpan;->copy(Lcom/android/launcher3/CellLayout$CellAndSpan;)V

    goto :goto_a
.end method

.method save()V
    .registers 5

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2535
    return-void

    .line 2532
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2533
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$CellAndSpan;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$CellAndSpan;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/CellLayout$CellAndSpan;->copy(Lcom/android/launcher3/CellLayout$CellAndSpan;)V

    goto :goto_a
.end method
