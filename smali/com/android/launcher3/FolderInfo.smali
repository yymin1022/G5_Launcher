.class public Lcom/android/launcher3/FolderInfo;
.super Lcom/android/launcher3/ItemInfo;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/FolderInfo$FolderListener;
    }
.end annotation


# static fields
.field public static final FLAG_ITEMS_SORTED:I = 0x1

.field public static final FLAG_MULTI_PAGE_ANIMATION:I = 0x4

.field public static final FLAG_WORK_FOLDER:I = 0x2

.field public static final NO_FLAGS:I

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public folderColor:I

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field opened:Z

.field public options:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/FolderInfo;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    sget-object v0, Lcom/android/launcher3/FolderInfo;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    :try_start_9
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interFieldInit$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$folderColor(Lcom/android/launcher3/FolderInfo;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/FolderInfo;->itemType:I

    .line 66
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FolderInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_23} :catch_2b

    .line 67
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$9$820c8ef2(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_2b
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$9$820c8ef2(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public static ajc$get$listeners(Lcom/android/launcher3/FolderInfo;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "FolderInfo.java"

    const-class v2, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "add"

    const-string v3, "com.android.launcher3.FolderInfo"

    const-string v4, "com.android.launcher3.ShortcutInfo"

    const-string v5, "item"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderInfo;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "onAddToDatabase"

    const-string v3, "com.android.launcher3.FolderInfo"

    const-string v4, "android.content.Context:android.content.ContentValues"

    const-string v5, "context:values"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x83

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderInfo;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.FolderInfo"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/FolderInfo;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$listeners(Lcom/android/launcher3/FolderInfo;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/FolderInfo;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    .line 75
    :try_start_6
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_20

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/FolderInfo;->itemsChanged()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_18} :catch_2f

    .line 80
    invoke-static {}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->aspectOf()Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$after$com_lge_launcher3_debug_DuplicatedApplicationChecker$3$94ea157a(Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 77
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onAdd(Lcom/android/launcher3/ShortcutInfo;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2b} :catch_2f

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 80
    :catch_2f
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->aspectOf()Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$after$com_lge_launcher3_debug_DuplicatedApplicationChecker$3$94ea157a(Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public add(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_13

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/FolderInfo;->itemsChanged()V

    .line 107
    return-void

    .line 104
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onAdd(Ljava/util/List;)V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public changeFolderColor(I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderInfo$changeFolderColor(Lcom/android/launcher3/FolderInfo;I)V

    return-void
.end method

.method public hasOption(I)Z
    .registers 3

    .prologue
    .line 179
    iget v0, p0, Lcom/android/launcher3/FolderInfo;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method itemsChanged()V
    .registers 3

    .prologue
    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    .line 152
    return-void

    .line 150
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0}, Lcom/android/launcher3/FolderInfo$FolderListener;->onItemsChanged()V

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .registers 6

    .prologue
    sget-object v0, Lcom/android/launcher3/FolderInfo;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 132
    :try_start_6
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 133
    const-string v0, "title"

    iget-object v2, p0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "options"

    iget v2, p0, Lcom/android/launcher3/FolderInfo;->options:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_27

    .line 136
    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$1$b8ce6778(Landroid/content/Context;Landroid/content/ContentValues;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_27
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/folder/FolderColorAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderColorAspect;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$after$com_lge_launcher3_folder_FolderColorAspect$1$b8ce6778(Landroid/content/Context;Landroid/content/ContentValues;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public remove(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_13

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/FolderInfo;->itemsChanged()V

    .line 93
    return-void

    .line 90
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onRemove(Lcom/android/launcher3/ShortcutInfo;)V

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public remove(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_13

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/FolderInfo;->itemsChanged()V

    .line 120
    return-void

    .line 117
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onRemove(Ljava/util/List;)V

    .line 116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_d
    return-void
.end method

.method public setOption(IZLandroid/content/Context;)V
    .registers 7

    .prologue
    .line 188
    iget v0, p0, Lcom/android/launcher3/FolderInfo;->options:I

    .line 189
    if-eqz p2, :cond_13

    .line 190
    iget v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    .line 194
    :goto_9
    if-eqz p3, :cond_12

    iget v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    if-eq v0, v1, :cond_12

    .line 195
    invoke-static {p3, p0}, Lcom/android/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)V

    .line 197
    :cond_12
    return-void

    .line 192
    :cond_13
    iget v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    goto :goto_9
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 125
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_d

    .line 128
    return-void

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FolderInfo(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/FolderInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/FolderInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/FolderInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/FolderInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/FolderInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/FolderInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/FolderInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->dropPos:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .registers 2

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/launcher3/ItemInfo;->unbind()V

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    return-void
.end method
