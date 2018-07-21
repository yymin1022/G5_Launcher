.class Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;
.super Ljava/lang/Object;
.source "DefaultLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullscreenItemParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .registers 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 6

    .prologue
    .line 337
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-object v2
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 288
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    if-nez v2, :cond_9

    .line 332
    :cond_8
    :goto_8
    return-wide v0

    .line 292
    :cond_9
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v3, "screen"

    const/16 v4, -0x12d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v3, "itemType"

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v3, "title"

    const-string v4, "fullscreen_item"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v2, v2, Lcom/android/launcher3/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v2}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v2

    .line 296
    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v5, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    .line 298
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    .line 299
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v6, "spanX"

    iget-object v7, v4, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v7, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v6, "spanY"

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v4, "className"

    invoke-static {p1, v4}, Lcom/android/launcher3/DefaultLayoutParser;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    if-eqz v4, :cond_8

    .line 307
    const-string v5, "android.resource:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 308
    sget-object v5, Lcom/lge/launcher3/util/LGHomeFeature$Config;->FEATURE_USE_SMARTBULLETIN:Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v5}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->getValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 311
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v6, "intent"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_94
    iget-object v4, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v4, v4, Lcom/android/launcher3/DefaultLayoutParser;->mCallback:Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;

    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v6, v6, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-interface {v4, v5, v6}, Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_8

    move-wide v0, v2

    .line 332
    goto/16 :goto_8

    .line 312
    :cond_ad
    const-string v5, "android.widget:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 313
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lge/launcher3/homesettings/SBHomeDataBaseUtil;->isEnabledQmemoPanel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 316
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v5, :cond_8

    .line 319
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    .line 320
    iget-object v6, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v6, v6, Lcom/android/launcher3/DefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 321
    invoke-direct {p0, v4}, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 322
    invoke-virtual {v6, v5, v7}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 323
    iget-object v6, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v6, v6, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v7, "appWidgetId"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    iget-object v5, p0, Lcom/android/launcher3/DefaultLayoutParser$FullscreenItemParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v5, v5, Lcom/android/launcher3/DefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    const-string v6, "intent"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94
.end method
