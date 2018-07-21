.class public Lcom/lge/launcher3/theme/GridItems;
.super Ljava/lang/Object;
.source "GridItems.java"


# instance fields
.field public id:I

.field public mInfo:Lcom/lge/launcher3/theme/LGThemeInfo;


# direct methods
.method public constructor <init>(ILcom/lge/launcher3/theme/LGThemeInfo;)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/lge/launcher3/theme/GridItems;->id:I

    .line 10
    iput-object p2, p0, Lcom/lge/launcher3/theme/GridItems;->mInfo:Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 11
    return-void
.end method
