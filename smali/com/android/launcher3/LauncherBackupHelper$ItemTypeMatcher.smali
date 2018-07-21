.class Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;
.super Ljava/lang/Object;
.source "LauncherBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTypeMatcher"
.end annotation


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/LauncherBackupHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherBackupHelper;I)V
    .registers 4

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;->this$0:Lcom/android/launcher3/LauncherBackupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    if-nez p2, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    iput-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;->mIntents:Ljava/util/ArrayList;

    .line 1177
    return-void

    .line 1176
    :cond_f
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;->parseIntents(I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_c
.end method

.method private parseIntents(I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;->this$0:Lcom/android/launcher3/LauncherBackupHelper;

    iget-object v0, v0, Lcom/android/launcher3/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 1183
    :try_start_11
    const-string v0, "resolve"

    invoke-static {v2, v0}, Lcom/android/launcher3/DefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1184
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 1186
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_27

    .line 1187
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I
    :try_end_24
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_24} :catch_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_24} :catch_6c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_24} :catch_6a
    .catchall {:try_start_11 .. :try_end_24} :catchall_65

    move-result v4

    if-le v4, v0, :cond_2a

    :cond_27
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    .line 1199
    :cond_2a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1201
    :goto_2d
    return-object v1

    .line 1188
    :cond_2e
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    .line 1190
    :try_start_31
    const-string v3, "favorite"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1192
    const-string v3, "uri"

    .line 1191
    invoke-static {v2, v3}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1193
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/net/URISyntaxException; {:try_start_31 .. :try_end_4b} :catch_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_4b} :catch_6c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4b} :catch_6a
    .catchall {:try_start_31 .. :try_end_4b} :catchall_65

    goto :goto_1a

    .line 1196
    :catch_4c
    move-exception v0

    .line 1197
    :goto_4d
    :try_start_4d
    const-string v3, "LauncherBackupHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_65

    .line 1199
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2d

    .line 1198
    :catchall_65
    move-exception v0

    .line 1199
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1200
    throw v0

    .line 1196
    :catch_6a
    move-exception v0

    goto :goto_4d

    :catch_6c
    move-exception v0

    goto :goto_4d
.end method


# virtual methods
.method public matches(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1205
    iget-object v0, p0, Lcom/android/launcher3/LauncherBackupHelper$ItemTypeMatcher;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 1213
    :goto_e
    return v0

    .line 1205
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1206
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1207
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1208
    if-eqz v0, :cond_7

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 1209
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1210
    :cond_38
    const/4 v0, 0x1

    goto :goto_e
.end method
