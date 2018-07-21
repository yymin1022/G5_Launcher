.class Lcom/lge/launcher3/util/DefaultWorkspaceChecker$Mnc;
.super Ljava/lang/Object;
.source "DefaultWorkspaceChecker.java"

# interfaces
.implements Lcom/lge/launcher3/util/DefaultWorkspaceChecker$CheckingInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/util/DefaultWorkspaceChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Mnc"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatching(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 34
    invoke-static {}, Lcom/lge/launcher3/util/DefaultWorkspaceChecker;->access$1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
