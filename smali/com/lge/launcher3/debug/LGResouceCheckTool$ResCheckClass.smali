.class abstract Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;
.super Ljava/lang/Object;
.source "LGResouceCheckTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/debug/LGResouceCheckTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ResCheckClass"
.end annotation


# instance fields
.field mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;->mClassName:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract check(Landroid/content/Context;Ljava/lang/reflect/Field;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
