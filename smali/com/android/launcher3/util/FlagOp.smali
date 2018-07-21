.class public abstract Lcom/android/launcher3/util/FlagOp;
.super Ljava/lang/Object;
.source "FlagOp.java"


# static fields
.field public static NO_OP:Lcom/android/launcher3/util/FlagOp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    new-instance v0, Lcom/android/launcher3/util/FlagOp$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/FlagOp$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    .line 6
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/FlagOp;)V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/launcher3/util/FlagOp;-><init>()V

    return-void
.end method

.method public static addFlag(I)Lcom/android/launcher3/util/FlagOp;
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/launcher3/util/FlagOp$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/FlagOp$2;-><init>(I)V

    return-object v0
.end method

.method public static removeFlag(I)Lcom/android/launcher3/util/FlagOp;
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcom/android/launcher3/util/FlagOp$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/FlagOp$3;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public apply(I)I
    .registers 2

    .prologue
    .line 12
    return p1
.end method
