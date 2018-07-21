.class public Lcom/lge/launcher3/sortappsby/SortAppsByConst;
.super Ljava/lang/Object;
.source "SortAppsByConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/sortappsby/SortAppsByConst$SortType;
    }
.end annotation


# static fields
.field public static final INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lge/launcher3/sortappsby/SortAppsByItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_HOMESCREEN_RANK_TO_SORT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$1;

    invoke-direct {v0}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$1;-><init>()V

    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 72
    new-instance v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$2;

    invoke-direct {v0}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$2;-><init>()V

    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst;->INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    .line 93
    new-instance v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst$3;

    invoke-direct {v0}, Lcom/lge/launcher3/sortappsby/SortAppsByConst$3;-><init>()V

    sput-object v0, Lcom/lge/launcher3/sortappsby/SortAppsByConst;->POSITION_COMPARATOR:Ljava/util/Comparator;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
