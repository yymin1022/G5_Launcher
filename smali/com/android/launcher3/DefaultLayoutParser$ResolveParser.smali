.class public Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResolveParser"
.end annotation


# instance fields
.field private final mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .registers 3

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v0, p1}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    iput-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 219
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move-wide v0, v2

    .line 222
    :cond_7
    :goto_7
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_15

    .line 223
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 222
    if-gt v6, v4, :cond_15

    .line 235
    return-wide v0

    .line 224
    :cond_15
    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    cmp-long v5, v0, v2

    if-gtz v5, :cond_7

    .line 227
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 228
    const-string v6, "favorite"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->mChildParser:Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DefaultLayoutParser$AppShortcutWithUriParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    goto :goto_7

    .line 231
    :cond_2f
    const-string v6, "DefaultLayoutParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Fallback groups can contain only favorites, found "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
