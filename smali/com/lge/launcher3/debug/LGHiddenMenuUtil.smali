.class public Lcom/lge/launcher3/debug/LGHiddenMenuUtil;
.super Ljava/lang/Object;
.source "LGHiddenMenuUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;,
        Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;
    }
.end annotation


# static fields
.field public static final HIDDENMENU_FILENAME:Ljava/lang/String; = "hiddenmenu.data"

.field private static keystatus:I

.field public static sFeatureClassList:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/lge/launcher3/config/LGFeatureConfig;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->sFeatureClassList:[Ljava/lang/Class;

    .line 177
    sput v3, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->keystatus:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemValue(ILjava/lang/reflect/Field;Landroid/content/Context;)Z
    .registers 5

    .prologue
    .line 79
    if-eqz p1, :cond_3a

    .line 80
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 82
    const-class v0, Lcom/lge/launcher3/util/LGHomeFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->sFeatureClassList:[Ljava/lang/Class;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    invoke-static {}, Lcom/lge/launcher3/util/LGHomeFeature;->getInstance()Lcom/lge/launcher3/util/LGHomeFeature;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    :goto_32
    return v0

    .line 88
    :cond_33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_37} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_37} :catch_39

    move-result v0

    goto :goto_32

    :catch_39
    move-exception v0

    .line 97
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    goto :goto_32

    .line 91
    :catch_3c
    move-exception v0

    goto :goto_3a
.end method

.method public static hiddenMenuRunKeyCondition(Landroid/app/Activity;ILandroid/view/KeyEvent;)V
    .registers 7

    .prologue
    const/16 v3, 0x19

    .line 180
    if-eqz p0, :cond_e

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 211
    :cond_e
    :goto_e
    return-void

    .line 183
    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 184
    sget v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->keystatus:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_41

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v3, :cond_41

    .line 188
    :try_start_20
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 189
    const-class v2, Lcom/lge/launcher3/debug/LGHiddenMenuActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 188
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_33} :catch_60
    .catch Landroid/content/ActivityNotFoundException; {:try_start_20 .. :try_end_33} :catch_5e

    .line 194
    const/high16 v1, 0x20810000

    :try_start_35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 198
    const/4 v0, 0x0

    sput v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->keystatus:I

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_35 .. :try_end_41} :catch_5e

    .line 204
    :cond_41
    :goto_41
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v3, :cond_4b

    .line 205
    const/4 v0, 0x1

    sput v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->keystatus:I

    goto :goto_e

    .line 207
    :cond_4b
    sget v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->keystatus:I

    if-lez v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_e

    .line 208
    sget v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->keystatus:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->keystatus:I

    goto :goto_e

    :catch_5e
    move-exception v0

    goto :goto_41

    :catch_60
    move-exception v0

    goto :goto_e
.end method

.method public static reLoadingFeature(Ljava/lang/Object;Lcom/lge/launcher3/util/LGHomeFeature;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 135
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_4e

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hiddenmenu.data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :try_start_24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 147
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_4f
    .catchall {:try_start_24 .. :try_end_34} :catchall_61

    .line 149
    :try_start_34
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_81
    .catchall {:try_start_34 .. :try_end_39} :catchall_78

    .line 150
    :try_start_39
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;

    .line 152
    if-eqz v0, :cond_44

    .line 153
    invoke-static {v0, p1}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->setValueAll(Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;Lcom/lge/launcher3/util/LGHomeFeature;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_85
    .catchall {:try_start_39 .. :try_end_44} :catchall_7a

    .line 161
    :cond_44
    :goto_44
    if-eqz v1, :cond_49

    .line 162
    :try_start_46
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_74

    .line 168
    :cond_49
    :goto_49
    if-eqz v3, :cond_4e

    .line 169
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_76

    .line 175
    :cond_4e
    :goto_4e
    return-void

    .line 157
    :catch_4f
    move-exception v0

    move-object v1, v2

    .line 158
    :goto_51
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_7d

    .line 161
    if-eqz v1, :cond_59

    .line 162
    :try_start_56
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_6e

    .line 168
    :cond_59
    :goto_59
    if-eqz v2, :cond_4e

    .line 169
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_4e

    .line 171
    :catch_5f
    move-exception v0

    goto :goto_4e

    .line 159
    :catchall_61
    move-exception v0

    move-object v3, v2

    .line 161
    :goto_63
    if-eqz v2, :cond_68

    .line 162
    :try_start_65
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_70

    .line 168
    :cond_68
    :goto_68
    if-eqz v3, :cond_6d

    .line 169
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_72

    .line 174
    :cond_6d
    :goto_6d
    throw v0

    :catch_6e
    move-exception v0

    goto :goto_59

    :catch_70
    move-exception v1

    goto :goto_68

    :catch_72
    move-exception v1

    goto :goto_6d

    :catch_74
    move-exception v0

    goto :goto_49

    :catch_76
    move-exception v0

    goto :goto_4e

    .line 159
    :catchall_78
    move-exception v0

    goto :goto_63

    :catchall_7a
    move-exception v0

    move-object v2, v1

    goto :goto_63

    :catchall_7d
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_63

    .line 157
    :catch_81
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_51

    :catch_85
    move-exception v0

    move-object v2, v3

    goto :goto_51

    :cond_88
    move-object v1, v2

    move-object v3, v2

    goto :goto_44
.end method

.method public static setValueAll(Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;Lcom/lge/launcher3/util/LGHomeFeature;)V
    .registers 13

    .prologue
    .line 101
    const-class v0, Lcom/lge/launcher3/config/LGFeatureConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    const-class v0, Lcom/lge/launcher3/util/LGHomeFeature$Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$functionDataManager;->getArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 131
    :cond_1a
    return-void

    .line 103
    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;

    .line 104
    sget-object v5, Lcom/lge/launcher3/debug/LGHiddenMenuUtil;->sFeatureClassList:[Ljava/lang/Class;

    array-length v6, v5

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v6, :cond_14

    aget-object v7, v5, v1

    .line 106
    :try_start_29
    iget-object v8, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->featureFields:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_2e} :catch_7e

    move-result-object v8

    .line 107
    if-eqz v8, :cond_1a

    .line 111
    :try_start_31
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 113
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    const-string v10, "boolean"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    .line 114
    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 115
    iget-boolean v7, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    invoke-virtual {v8, p1, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 104
    :cond_54
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 116
    :cond_57
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 117
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->valueOf(Ljava/lang/String;)Lcom/lge/launcher3/util/LGHomeFeature$Config;

    move-result-object v7

    .line 118
    iget-boolean v8, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    invoke-virtual {v7, v8}, Lcom/lge/launcher3/util/LGHomeFeature$Config;->setValue(Z)V

    goto :goto_54

    .line 124
    :catch_6b
    move-exception v7

    goto :goto_54

    .line 120
    :cond_6d
    const-string v7, "boolean"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 121
    const/4 v7, 0x0

    iget-boolean v9, v0, Lcom/lge/launcher3/debug/LGHiddenMenuUtil$FunctionData;->mValume:Z

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_7b} :catch_6b
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_31 .. :try_end_7b} :catch_7e

    goto :goto_54

    :catch_7c
    move-exception v7

    goto :goto_54

    :catch_7e
    move-exception v7

    goto :goto_54
.end method
