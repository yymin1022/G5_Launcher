.class Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;
.super Ljava/lang/Object;
.source "AppNotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionSpec"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraSpecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->mAction:Ljava/lang/String;

    .line 507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->mExtraSpecs:Ljava/util/HashMap;

    .line 508
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->setComponents(Ljava/util/HashSet;)V

    .line 509
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getComponents()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->mComponents:Ljava/util/HashSet;

    return-object v0
.end method

.method public getExtraSpecs()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ExtraSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->mExtraSpecs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public setComponents(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    iput-object p1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$ActionSpec;->mComponents:Ljava/util/HashSet;

    .line 525
    return-void
.end method
