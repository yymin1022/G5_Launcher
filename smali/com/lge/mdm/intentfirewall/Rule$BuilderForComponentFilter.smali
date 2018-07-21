.class public final Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/intentfirewall/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderForComponentFilter"
.end annotation


# instance fields
.field private componentName:Landroid/content/ComponentName;

.field private rule:Lcom/lge/mdm/intentfirewall/Rule;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/lge/mdm/intentfirewall/Rule;

    invoke-direct {v0}, Lcom/lge/mdm/intentfirewall/Rule;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;->rule:Lcom/lge/mdm/intentfirewall/Rule;

    .line 93
    iput-object p1, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;->componentName:Landroid/content/ComponentName;

    .line 91
    return-void
.end method


# virtual methods
.method public build()Lcom/lge/mdm/intentfirewall/Rule;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;->rule:Lcom/lge/mdm/intentfirewall/Rule;

    .line 99
    .local v0, "r":Lcom/lge/mdm/intentfirewall/Rule;
    invoke-static {v0}, Lcom/lge/mdm/intentfirewall/Rule;->-get0(Lcom/lge/mdm/intentfirewall/Rule;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iput-object v3, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;->rule:Lcom/lge/mdm/intentfirewall/Rule;

    .line 102
    iput-object v3, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForComponentFilter;->componentName:Landroid/content/ComponentName;

    .line 103
    return-object v0
.end method
