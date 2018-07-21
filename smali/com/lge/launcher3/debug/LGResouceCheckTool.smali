.class public Lcom/lge/launcher3/debug/LGResouceCheckTool;
.super Ljava/lang/Object;
.source "LGResouceCheckTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;
    }
.end annotation


# static fields
.field public static sCeckClassList:[Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;

    const/4 v1, 0x0

    new-instance v2, Lcom/lge/launcher3/debug/LGResouceCheckTool$1;

    const-string v3, "drawable"

    invoke-direct {v2, v3}, Lcom/lge/launcher3/debug/LGResouceCheckTool$1;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 26
    new-instance v2, Lcom/lge/launcher3/debug/LGResouceCheckTool$2;

    const-string v3, "dimen"

    invoke-direct {v2, v3}, Lcom/lge/launcher3/debug/LGResouceCheckTool$2;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 31
    new-instance v2, Lcom/lge/launcher3/debug/LGResouceCheckTool$3;

    const-string v3, "color"

    invoke-direct {v2, v3}, Lcom/lge/launcher3/debug/LGResouceCheckTool$3;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 36
    new-instance v2, Lcom/lge/launcher3/debug/LGResouceCheckTool$4;

    const-string v3, "bool"

    invoke-direct {v2, v3}, Lcom/lge/launcher3/debug/LGResouceCheckTool$4;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 41
    new-instance v2, Lcom/lge/launcher3/debug/LGResouceCheckTool$5;

    const-string v3, "integer"

    invoke-direct {v2, v3}, Lcom/lge/launcher3/debug/LGResouceCheckTool$5;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 21
    sput-object v0, Lcom/lge/launcher3/debug/LGResouceCheckTool;->sCeckClassList:[Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAllRes(Landroid/content/Context;)Ljava/lang/String;
    .registers 23

    .prologue
    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v8, "com.lge.launcher3.R"

    .line 54
    :try_start_7
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_a} :catch_18

    move-result-object v9

    .line 59
    const/4 v4, 0x0

    .line 60
    sget-object v10, Lcom/lge/launcher3/debug/LGResouceCheckTool;->sCeckClassList:[Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;

    array-length v11, v10

    const/4 v2, 0x0

    move v6, v2

    :goto_11
    if-lt v6, v11, :cond_21

    .line 96
    :cond_13
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_17
    return-object v2

    .line 55
    :catch_18
    move-exception v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    .line 60
    :cond_21
    aget-object v12, v10, v6

    .line 61
    invoke-virtual {v9}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v13

    .line 62
    const/4 v3, 0x0

    .line 63
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    array-length v0, v13

    move/from16 v16, v0

    const/4 v2, 0x0

    move v5, v2

    :goto_37
    move/from16 v0, v16

    if-lt v5, v0, :cond_87

    move-object v2, v3

    .line 74
    :goto_3c
    if-eqz v2, :cond_13

    .line 78
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 79
    array-length v13, v5

    .line 80
    const/4 v3, 0x0

    .line 81
    array-length v0, v5

    move/from16 v16, v0

    const/4 v2, 0x0

    move/from16 v21, v2

    move v2, v3

    move/from16 v3, v21

    :goto_4d
    move/from16 v0, v16

    if-lt v3, v0, :cond_e0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Total: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, " Error : "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_11

    .line 65
    :cond_87
    aget-object v2, v13, v5

    .line 66
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    .line 67
    iget-object v0, v12, Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;->mClassName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 68
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "$"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_db

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ". "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " check : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    .line 71
    goto/16 :goto_3c

    .line 65
    :cond_db
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_37

    .line 81
    :cond_e0
    aget-object v17, v5, v3

    .line 83
    :try_start_e2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/lge/launcher3/debug/LGResouceCheckTool$ResCheckClass;->check(Landroid/content/Context;Ljava/lang/reflect/Field;)V
    :try_end_e9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e2 .. :try_end_e9} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e9} :catch_113

    .line 81
    :goto_e9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4d

    .line 85
    :catch_ed
    move-exception v18

    add-int/lit8 v2, v2, 0x1

    .line 87
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "  - Error: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e9

    .line 88
    :catch_113
    move-exception v17

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e9
.end method
