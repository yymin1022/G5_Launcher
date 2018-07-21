.class Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;
.super Lcom/android/launcher3/DefaultLayoutParser;
.source "CommonAppTypeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CommonAppTypeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLayoutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CommonAppTypeParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CommonAppTypeParser;)V
    .registers 10

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;->this$0:Lcom/android/launcher3/CommonAppTypeParser;

    .line 96
    iget-object v1, p1, Lcom/android/launcher3/CommonAppTypeParser;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 97
    iget-object v0, p1, Lcom/android/launcher3/CommonAppTypeParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Lcom/android/launcher3/CommonAppTypeParser;->mResId:I

    const-string v6, "resolve"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;I)V

    .line 98
    return-void
.end method


# virtual methods
.method protected addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J
    .registers 6

    .prologue
    .line 102
    if-nez p3, :cond_a

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;->this$0:Lcom/android/launcher3/CommonAppTypeParser;

    iput-object p2, v0, Lcom/android/launcher3/CommonAppTypeParser;->parsedIntent:Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;->this$0:Lcom/android/launcher3/CommonAppTypeParser;

    iput-object p1, v0, Lcom/android/launcher3/CommonAppTypeParser;->parsedTitle:Ljava/lang/String;

    .line 106
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/DefaultLayoutParser;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public parseValues()V
    .registers 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;->mLayoutId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 112
    :try_start_8
    iget-object v0, p0, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;->mRootTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/launcher3/CommonAppTypeParser$MyLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DefaultLayoutParser$ResolveParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_15} :catch_22

    .line 117
    :goto_15
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 118
    return-void

    .line 114
    :catch_19
    move-exception v0

    .line 115
    :goto_1a
    const-string v2, "CommonAppTypeParser"

    const-string v3, "Unable to parse default app info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 114
    :catch_22
    move-exception v0

    goto :goto_1a
.end method
