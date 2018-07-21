.class Lcom/lge/launcher3/theme/LGThemeChange$1;
.super Ljava/lang/Object;
.source "LGThemeChange.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/theme/LGThemeChange;->searchThemePackage()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/launcher3/theme/LGThemeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeChange;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/LGThemeChange;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChange$1;->this$0:Lcom/lge/launcher3/theme/LGThemeChange;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/launcher3/theme/LGThemeInfo;Lcom/lge/launcher3/theme/LGThemeInfo;)I
    .registers 5

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/lge/launcher3/theme/LGThemeInfo;->getRank()I

    move-result v0

    .line 88
    invoke-virtual {p2}, Lcom/lge/launcher3/theme/LGThemeInfo;->getRank()I

    move-result v1

    .line 90
    if-le v0, v1, :cond_c

    .line 91
    const/4 v0, -0x1

    .line 101
    :goto_b
    return v0

    .line 92
    :cond_c
    if-ge v0, v1, :cond_10

    .line 93
    const/4 v0, 0x1

    goto :goto_b

    .line 97
    :cond_10
    if-nez v0, :cond_16

    if-nez v1, :cond_16

    .line 98
    const/4 v0, 0x0

    goto :goto_b

    .line 101
    :cond_16
    iget-object v0, p1, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/lge/launcher3/theme/LGThemeInfo;

    check-cast p2, Lcom/lge/launcher3/theme/LGThemeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lge/launcher3/theme/LGThemeChange$1;->compare(Lcom/lge/launcher3/theme/LGThemeInfo;Lcom/lge/launcher3/theme/LGThemeInfo;)I

    move-result v0

    return v0
.end method
