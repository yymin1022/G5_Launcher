.class final Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;
.super Landroid/content/IntentFilter;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/intentfirewall/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FirewallIntentFilter"
.end annotation


# instance fields
.field private final rule:Lcom/lge/mdm/intentfirewall/Rule;


# direct methods
.method public constructor <init>(Lcom/lge/mdm/intentfirewall/Rule;)V
    .registers 2
    .param p1, "rule"    # Lcom/lge/mdm/intentfirewall/Rule;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;->rule:Lcom/lge/mdm/intentfirewall/Rule;

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/content/IntentFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Rule = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mdm/intentfirewall/Rule$FirewallIntentFilter;->rule:Lcom/lge/mdm/intentfirewall/Rule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
