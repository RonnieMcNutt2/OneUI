.class public interface abstract Landroid/hardware/radio/network/GeranBands$$;
.super Ljava/lang/Object;
.source "GeranBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/GeranBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 39
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 40
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 43
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 44
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 45
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_25
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 46
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/network/GeranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v3    # "_aidl_i":I
    :cond_39
    goto :goto_51

    .line 49
    :cond_3a
    const-class v3, [I

    if-ne v0, v3, :cond_56

    .line 50
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_51

    aget v6, v3, v5

    .line 51
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/network/GeranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 50
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 54
    :cond_51
    :goto_51
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 49
    :cond_56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    .end local v1    # "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "_aidl_sj":Ljava/util/StringJoiner;
    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "_aidl_v"    # I

    .line 22
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "BAND_T380"

    return-object v0

    .line 23
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "BAND_T410"

    return-object v0

    .line 24
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string v0, "BAND_450"

    return-object v0

    .line 25
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string v0, "BAND_480"

    return-object v0

    .line 26
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string v0, "BAND_710"

    return-object v0

    .line 27
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string v0, "BAND_750"

    return-object v0

    .line 28
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string v0, "BAND_T810"

    return-object v0

    .line 29
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string v0, "BAND_850"

    return-object v0

    .line 30
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string v0, "BAND_P900"

    return-object v0

    .line 31
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string v0, "BAND_E900"

    return-object v0

    .line 32
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string v0, "BAND_R900"

    return-object v0

    .line 33
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    const-string v0, "BAND_DCS1800"

    return-object v0

    .line 34
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    const-string v0, "BAND_PCS1900"

    return-object v0

    .line 35
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    const-string v0, "BAND_ER900"

    return-object v0

    .line 36
    :cond_5b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
