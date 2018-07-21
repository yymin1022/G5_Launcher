.class Lcom/lge/launcher3/initialguide/InitialGuideManager$2;
.super Ljava/lang/Object;
.source "InitialGuideManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/initialguide/InitialGuideManager;->checkNeedShowAgain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/initialguide/InitialGuideManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    const v8, 0x7f0c001d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->access$0()Landroid/content/Context;

    move-result-object v2

    .line 183
    sget-object v3, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;->FIRST_SHOWN_TIME:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;

    .line 182
    invoke-static {v2, v6, v3, v4, v5}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->getLong(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->access$1(Lcom/lge/launcher3/initialguide/InitialGuideManager;J)V

    .line 185
    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    invoke-static {v1}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->access$2(Lcom/lge/launcher3/initialguide/InitialGuideManager;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    invoke-static {v1}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->access$2(Lcom/lge/launcher3/initialguide/InitialGuideManager;)J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-nez v1, :cond_3b

    .line 203
    :cond_3a
    :goto_3a
    return-void

    .line 189
    :cond_3b
    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->access$0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    .line 190
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 191
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    invoke-static {v0}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->access$2(Lcom/lge/launcher3/initialguide/InitialGuideManager;)J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    int-to-long v0, v1

    cmp-long v0, v2, v0

    if-lez v0, :cond_3a

    .line 192
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    .line 193
    const-string v1, "InitialGuide will be shown again, over %d hours"

    new-array v2, v7, [Ljava/lang/Object;

    .line 194
    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->access$0()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 192
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->access$0()Landroid/content/Context;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;->FIRST_SHOWN_TIME:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$InitialGuideKey;

    .line 196
    invoke-static {v0, v6, v1, v10, v11}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->putLong(Landroid/content/Context;ILcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;J)Z

    .line 198
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    invoke-virtual {v0, v6}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->setInitialGuideActivityIsStarted(Z)V

    .line 199
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    invoke-virtual {v0, v6}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->saveInitialGuideShown(Z)V

    .line 200
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$2;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    invoke-virtual {v0, v7}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->setReadyToShow(Z)V

    goto :goto_3a
.end method
