.class public final Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/intentfirewall/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderForIntentFilter"
.end annotation


# instance fields
.field private intentFilter:Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

.field private rule:Lcom/lge/mdm/intentfirewall/Rule;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/lge/mdm/intentfirewall/Rule;

    invoke-direct {v0}, Lcom/lge/mdm/intentfirewall/Rule;-><init>()V

    iput-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->rule:Lcom/lge/mdm/intentfirewall/Rule;

    .line 36
    new-instance v0, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    iget-object v1, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->rule:Lcom/lge/mdm/intentfirewall/Rule;

    invoke-direct {v0, v1}, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;-><init>(Lcom/lge/mdm/intentfirewall/Rule;)V

    iput-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->intentFilter:Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    .line 34
    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    return-void

    .line 53
    :cond_7
    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->intentFilter:Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public build()Lcom/lge/mdm/intentfirewall/Rule;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->rule:Lcom/lge/mdm/intentfirewall/Rule;

    .line 42
    .local v0, "r":Lcom/lge/mdm/intentfirewall/Rule;
    invoke-static {v0}, Lcom/lge/mdm/intentfirewall/Rule;->-get1(Lcom/lge/mdm/intentfirewall/Rule;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->intentFilter:Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iput-object v3, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->rule:Lcom/lge/mdm/intentfirewall/Rule;

    .line 45
    iput-object v3, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->intentFilter:Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    .line 46
    return-object v0
.end method

.method public setCategories(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_a

    .line 58
    :cond_9
    return-void

    .line 61
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cate$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "cate":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->intentFilter:Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    invoke-virtual {v2, v0}, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_e

    .line 56
    .end local v0    # "cate":Ljava/lang/String;
    :cond_20
    return-void
.end method

.method public setSchema(Ljava/lang/String;)V
    .registers 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 68
    return-void

    .line 70
    :cond_7
    iget-object v0, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->intentFilter:Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    invoke-virtual {v0, p1}, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 76
    return-void

    .line 79
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/lge/mdm/intentfirewall/Rule$BuilderForIntentFilter;->intentFilter:Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;

    invoke-virtual {v1, p1}, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_7 .. :try_end_c} :catch_d

    .line 74
    :goto_c
    return-void

    .line 80
    :catch_d
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v1, ""

    const-string/jumbo v2, "setting Type"

    invoke-static {v1, v2, v0}, Lcom/lge/mdm/util/MDMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method
