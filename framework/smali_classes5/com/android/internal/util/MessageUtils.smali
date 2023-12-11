.class public Lcom/android/internal/util/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/MessageUtils$DuplicateConstantError;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final DEFAULT_PREFIXES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const-class v0, Lcom/android/internal/util/MessageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    .line 119
    const-string v0, "CMD_"

    const-string v1, "EVENT_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "classNames"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/android/internal/util/MessageUtils;->DEFAULT_PREFIXES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public static findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 21
    .param p0, "classes"    # [Ljava/lang/Class;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v0

    .line 54
    .local v3, "messageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v4, :cond_a3

    aget-object v7, v1, v6

    .line 55
    .local v7, "c":Ljava/lang/Class;
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "className":Ljava/lang/String;
    :try_start_14
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_18} :catch_7f

    move-object v9, v0

    .line 64
    .local v9, "fields":[Ljava/lang/reflect/Field;
    nop

    .line 66
    array-length v10, v9

    const/4 v11, 0x0

    :goto_1c
    if-ge v11, v10, :cond_9b

    aget-object v12, v9, v11

    .line 67
    .local v12, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 68
    .local v13, "modifiers":I
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v15

    xor-int/2addr v15, v14

    or-int/2addr v0, v15

    if-eqz v0, :cond_33

    .line 69
    goto :goto_78

    .line 72
    :cond_33
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, "name":Ljava/lang/String;
    array-length v5, v2

    const/4 v14, 0x0

    :goto_39
    if-ge v14, v5, :cond_78

    aget-object v1, v2, v14

    .line 75
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 76
    goto :goto_71

    .line 82
    :cond_44
    move-object/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "prefix":Ljava/lang/String;
    .local v17, "prefix":Ljava/lang/String;
    :try_start_47
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_4a} :catch_6f
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_4a} :catch_6f

    .line 87
    const/4 v0, 0x0

    :try_start_4b
    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_4f} :catch_6d
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_4b .. :try_end_4f} :catch_6d
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_4f} :catch_6f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_4f} :catch_6f

    .line 93
    .local v0, "value":I
    nop

    .line 96
    :try_start_50
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v18, v16

    .line 97
    .local v18, "previousName":Ljava/lang/String;
    move-object/from16 v1, v18

    .end local v18    # "previousName":Ljava/lang/String;
    .local v1, "previousName":Ljava/lang/String;
    if-eqz v1, :cond_69

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_63

    goto :goto_69

    .line 98
    :cond_63
    new-instance v2, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;

    invoke-direct {v2, v15, v1, v0}, Lcom/android/internal/util/MessageUtils$DuplicateConstantError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v3    # "messageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v7    # "c":Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "fields":[Ljava/lang/reflect/Field;
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "modifiers":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "prefix":Ljava/lang/String;
    .end local p0    # "classes":[Ljava/lang/Class;
    .end local p1    # "prefixes":[Ljava/lang/String;
    throw v2

    .line 101
    .restart local v3    # "messageNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v7    # "c":Ljava/lang/Class;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v9    # "fields":[Ljava/lang/reflect/Field;
    .restart local v12    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "modifiers":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "prefix":Ljava/lang/String;
    .restart local p0    # "classes":[Ljava/lang/Class;
    .restart local p1    # "prefixes":[Ljava/lang/String;
    :cond_69
    :goto_69
    invoke-virtual {v3, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_6c} :catch_6f
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_6c} :catch_6f

    .line 109
    .end local v0    # "value":I
    .end local v1    # "previousName":Ljava/lang/String;
    goto :goto_71

    .line 88
    :catch_6d
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_78

    .line 106
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_6f
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "prefix":Ljava/lang/String;
    :goto_71
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_39

    .line 66
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "modifiers":I
    .end local v15    # "name":Ljava/lang/String;
    :cond_78
    :goto_78
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_1c

    .line 61
    .end local v9    # "fields":[Ljava/lang/reflect/Field;
    :catch_7f
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 62
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/internal/util/MessageUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t list fields of class "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    nop

    .line 54
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v7    # "c":Ljava/lang/Class;
    .end local v8    # "className":Ljava/lang/String;
    :cond_9b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_c

    .line 113
    :cond_a3
    return-object v3
.end method
