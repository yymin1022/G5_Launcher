.class Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextAspect$1;
.super Ljava/lang/Object;
.source "AdaptiveTextAspect.aj"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

.field private final synthetic val$workspace:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Lcom/android/launcher3/Workspace;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextAspect$1;->this$0:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    iput-object p2, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextAspect$1;->val$workspace:Lcom/android/launcher3/Workspace;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 69
    sget-object v0, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$AdaptiveTextKey;->TEXT_COLOR:Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$AdaptiveTextKey;

    invoke-static {v0}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->toKeyString(Lcom/lge/launcher3/sharedpreferences/SharedPreferencesConst$PreferenceKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 79
    :goto_d
    return-void

    .line 73
    :cond_e
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 74
    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->access$0(I)V

    .line 75
    iget-object v1, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextAspect$1;->this$0:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    iget-object v2, p0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextAspect$1;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v2, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$setAdaptiveTextColor(Lcom/android/launcher3/Workspace;I)V

    .line 77
    sget-object v1, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->TAG:Ljava/lang/String;

    const-string v2, "onSharedPreferenceChanged(%s): %d(%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 78
    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 77
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method
