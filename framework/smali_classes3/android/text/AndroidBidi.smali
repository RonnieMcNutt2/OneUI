.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[B)I
    .registers 8
    .param p0, "dir"    # I
    .param p1, "chs"    # [C
    .param p2, "chInfo"    # [B

    .line 38
    if-eqz p1, :cond_3e

    if-eqz p2, :cond_3e

    .line 42
    array-length v0, p1

    .line 43
    .local v0, "length":I
    array-length v1, p2

    if-lt v1, v0, :cond_38

    .line 48
    packed-switch p0, :pswitch_data_44

    .line 53
    :pswitch_b
    const/4 v1, 0x0

    .local v1, "paraLevel":B
    goto :goto_16

    .line 51
    .end local v1    # "paraLevel":B
    :pswitch_d
    const/16 v1, 0x7e

    .restart local v1    # "paraLevel":B
    goto :goto_16

    .line 49
    .end local v1    # "paraLevel":B
    :pswitch_10
    const/4 v1, 0x0

    .restart local v1    # "paraLevel":B
    goto :goto_16

    .line 50
    .end local v1    # "paraLevel":B
    :pswitch_12
    const/4 v1, 0x1

    .restart local v1    # "paraLevel":B
    goto :goto_16

    .line 52
    .end local v1    # "paraLevel":B
    :pswitch_14
    const/16 v1, 0x7f

    .line 55
    .restart local v1    # "paraLevel":B
    :goto_16
    new-instance v2, Landroid/icu/text/Bidi;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/icu/text/Bidi;-><init>(II)V

    .line 56
    .local v2, "icuBidi":Landroid/icu/text/Bidi;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 57
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v0, :cond_2c

    .line 58
    invoke-virtual {v2, v3}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v4

    aput-byte v4, p2, v3

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 60
    .end local v3    # "i":I
    :cond_2c
    invoke-virtual {v2}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v3

    .line 61
    .local v3, "result":B
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_36

    const/4 v4, 0x1

    goto :goto_37

    :cond_36
    const/4 v4, -0x1

    :goto_37
    return v4

    .line 44
    .end local v1    # "paraLevel":B
    .end local v2    # "icuBidi":Landroid/icu/text/Bidi;
    .end local v3    # "result":B
    :cond_38
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 39
    .end local v0    # "length":I
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :pswitch_data_44
    .packed-switch -0x2
        :pswitch_14
        :pswitch_12
        :pswitch_b
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .registers 25
    .param p0, "dir"    # I
    .param p1, "levels"    # [B
    .param p2, "lstart"    # I
    .param p3, "chars"    # [C
    .param p4, "cstart"    # I
    .param p5, "len"    # I

    .line 78
    move/from16 v0, p5

    if-nez v0, :cond_7

    .line 79
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    .line 82
    :cond_7
    const/4 v2, 0x1

    move/from16 v3, p0

    if-ne v3, v2, :cond_e

    const/4 v4, 0x0

    goto :goto_f

    :cond_e
    move v4, v2

    .line 83
    .local v4, "baseLevel":I
    :goto_f
    aget-byte v5, p1, p2

    .line 84
    .local v5, "curLevel":I
    move v6, v5

    .line 85
    .local v6, "minLevel":I
    const/4 v7, 0x1

    .line 86
    .local v7, "runCount":I
    add-int/lit8 v8, p2, 0x1

    .local v8, "i":I
    add-int v9, p2, v0

    .local v9, "e":I
    :goto_17
    if-ge v8, v9, :cond_23

    .line 87
    aget-byte v10, p1, v8

    .line 88
    .local v10, "level":I
    if-eq v10, v5, :cond_20

    .line 89
    move v5, v10

    .line 90
    add-int/lit8 v7, v7, 0x1

    .line 86
    .end local v10    # "level":I
    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 95
    .end local v8    # "i":I
    .end local v9    # "e":I
    :cond_23
    move/from16 v8, p5

    .line 96
    .local v8, "visLen":I
    and-int/lit8 v9, v5, 0x1

    and-int/lit8 v10, v4, 0x1

    if-eq v9, v10, :cond_49

    .line 98
    :goto_2b
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_44

    .line 99
    add-int v9, p4, v8

    aget-char v9, p3, v9

    .line 101
    .local v9, "ch":C
    const/16 v10, 0xa

    if-ne v9, v10, :cond_3a

    .line 102
    add-int/lit8 v8, v8, -0x1

    .line 103
    goto :goto_44

    .line 106
    :cond_3a
    const/16 v10, 0x20

    if-eq v9, v10, :cond_43

    const/16 v10, 0x9

    if-eq v9, v10, :cond_43

    .line 107
    goto :goto_44

    .line 109
    .end local v9    # "ch":C
    :cond_43
    goto :goto_2b

    .line 110
    :cond_44
    :goto_44
    add-int/2addr v8, v2

    .line 111
    if-eq v8, v0, :cond_49

    .line 112
    add-int/lit8 v7, v7, 0x1

    .line 116
    :cond_49
    if-ne v7, v2, :cond_57

    if-ne v6, v4, :cond_57

    .line 118
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_54

    .line 119
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v1

    .line 121
    :cond_54
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v1

    .line 124
    :cond_57
    mul-int/lit8 v9, v7, 0x2

    new-array v9, v9, [I

    .line 125
    .local v9, "ld":[I
    move v10, v6

    .line 126
    .local v10, "maxLevel":I
    shl-int/lit8 v11, v6, 0x1a

    .line 131
    .local v11, "levelBits":I
    const/4 v12, 0x1

    .line 132
    .local v12, "n":I
    move/from16 v13, p2

    .line 133
    .local v13, "prev":I
    move v5, v6

    .line 134
    move/from16 v14, p2

    .local v14, "i":I
    add-int v15, p2, v8

    .local v15, "e":I
    :goto_66
    if-ge v14, v15, :cond_88

    .line 135
    aget-byte v1, p1, v14

    .line 136
    .local v1, "level":I
    if-eq v1, v5, :cond_85

    .line 137
    move v5, v1

    .line 138
    if-le v1, v10, :cond_71

    .line 139
    move v10, v1

    goto :goto_74

    .line 140
    :cond_71
    if-ge v1, v6, :cond_74

    .line 141
    move v6, v1

    .line 144
    :cond_74
    :goto_74
    add-int/lit8 v17, v12, 0x1

    .end local v12    # "n":I
    .local v17, "n":I
    sub-int v18, v14, v13

    or-int v18, v18, v11

    aput v18, v9, v12

    .line 145
    add-int/lit8 v12, v17, 0x1

    .end local v17    # "n":I
    .restart local v12    # "n":I
    sub-int v18, v14, p2

    aput v18, v9, v17

    .line 146
    shl-int/lit8 v11, v5, 0x1a

    .line 147
    move v13, v14

    .line 134
    .end local v1    # "level":I
    :cond_85
    add-int/lit8 v14, v14, 0x1

    goto :goto_66

    .line 150
    .end local v14    # "i":I
    .end local v15    # "e":I
    :cond_88
    add-int v1, p2, v8

    sub-int/2addr v1, v13

    or-int/2addr v1, v11

    aput v1, v9, v12

    .line 151
    if-ge v8, v0, :cond_9b

    .line 152
    add-int/2addr v12, v2

    aput v8, v9, v12

    .line 153
    add-int/2addr v12, v2

    sub-int v1, v0, v8

    shl-int/lit8 v14, v4, 0x1a

    or-int/2addr v1, v14

    aput v1, v9, v12

    .line 168
    .end local v12    # "n":I
    .end local v13    # "prev":I
    :cond_9b
    and-int/lit8 v1, v6, 0x1

    if-ne v1, v4, :cond_a7

    .line 169
    add-int/lit8 v6, v6, 0x1

    .line 170
    if-le v10, v6, :cond_a5

    move v1, v2

    goto :goto_a6

    :cond_a5
    const/4 v1, 0x0

    .local v1, "swap":Z
    :goto_a6
    goto :goto_ac

    .line 172
    .end local v1    # "swap":Z
    :cond_a7
    if-le v7, v2, :cond_ab

    move v1, v2

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x0

    .line 174
    .restart local v1    # "swap":Z
    :goto_ac
    if-eqz v1, :cond_f4

    .line 175
    add-int/lit8 v2, v10, -0x1

    .local v2, "level":I
    :goto_b0
    if-lt v2, v6, :cond_f4

    .line 176
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_b3
    array-length v13, v9

    if-ge v12, v13, :cond_f1

    .line 177
    aget v13, v9, v12

    aget-byte v13, p1, v13

    if-lt v13, v2, :cond_ee

    .line 178
    add-int/lit8 v13, v12, 0x2

    .line 179
    .local v13, "e":I
    :goto_be
    array-length v14, v9

    if-ge v13, v14, :cond_ca

    aget v14, v9, v13

    aget-byte v14, p1, v14

    if-lt v14, v2, :cond_ca

    .line 180
    add-int/lit8 v13, v13, 0x2

    goto :goto_be

    .line 182
    :cond_ca
    move v14, v12

    .local v14, "low":I
    add-int/lit8 v15, v13, -0x2

    .local v15, "hi":I
    :goto_cd
    if-ge v14, v15, :cond_ec

    .line 183
    aget v16, v9, v14

    .local v16, "x":I
    aget v17, v9, v15

    aput v17, v9, v14

    aput v16, v9, v15

    .line 184
    add-int/lit8 v17, v14, 0x1

    aget v16, v9, v17

    add-int/lit8 v17, v14, 0x1

    add-int/lit8 v18, v15, 0x1

    aget v18, v9, v18

    aput v18, v9, v17

    add-int/lit8 v17, v15, 0x1

    aput v16, v9, v17

    .line 182
    .end local v16    # "x":I
    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v15, v15, -0x2

    goto :goto_cd

    .line 186
    .end local v14    # "low":I
    .end local v15    # "hi":I
    :cond_ec
    add-int/lit8 v12, v13, 0x2

    .line 176
    .end local v13    # "e":I
    :cond_ee
    add-int/lit8 v12, v12, 0x2

    goto :goto_b3

    .line 175
    .end local v12    # "i":I
    :cond_f1
    add-int/lit8 v2, v2, -0x1

    goto :goto_b0

    .line 191
    .end local v2    # "level":I
    :cond_f4
    new-instance v2, Landroid/text/Layout$Directions;

    invoke-direct {v2, v9}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v2
.end method
