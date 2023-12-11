.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public grip:F

.field public isResampled:Z

.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public palm:F

.field public pressure:F

.field public relativeX:F

.field public relativeY:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4881
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 2
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 4889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4890
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 4891
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 4
    .param p0, "size"    # I

    .line 4896
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 4897
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 4898
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 4897
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4900
    .end local v1    # "i":I
    :cond_f
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 5044
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 5046
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 5047
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 5048
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 5049
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 5050
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 5051
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 5052
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 5053
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 5054
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 5055
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 5056
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 5058
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 5062
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    .line 5064
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    .line 5065
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .registers 8
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .line 5073
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 5074
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 5075
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_20

    .line 5076
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 5077
    .local v2, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    .line 5078
    .local v3, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 5079
    .local v4, "values":[F
    if-eqz v4, :cond_17

    array-length v5, v4

    if-le v3, v5, :cond_1c

    .line 5080
    :cond_17
    array-length v5, v2

    new-array v4, v5, [F

    .line 5081
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 5083
    :cond_1c
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5086
    .end local v2    # "otherValues":[F
    .end local v3    # "count":I
    .end local v4    # "values":[F
    :cond_20
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 5087
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 5088
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 5089
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 5090
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 5091
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 5092
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 5093
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 5094
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 5095
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 5096
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 5099
    iget v2, p1, Landroid/view/MotionEvent$PointerCoords;->palm:F

    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 5102
    iget-boolean v2, p1, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    iput-boolean v2, p0, Landroid/view/MotionEvent$PointerCoords;->isResampled:Z

    .line 5103
    return-void
.end method

.method public getAxisValue(I)F
    .registers 10
    .param p1, "axis"    # I

    .line 5115
    sparse-switch p1, :sswitch_data_56

    .line 5148
    if-ltz p1, :cond_4d

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_4d

    .line 5151
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 5152
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 5153
    .local v2, "axisBit":J
    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3f

    .line 5154
    const/4 v4, 0x0

    return v4

    .line 5145
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    :sswitch_18
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    return v0

    .line 5140
    :sswitch_1b
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    return v0

    .line 5137
    :sswitch_1e
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    return v0

    .line 5135
    :sswitch_21
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    return v0

    .line 5133
    :sswitch_24
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v0

    .line 5131
    :sswitch_27
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v0

    .line 5129
    :sswitch_2a
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v0

    .line 5127
    :sswitch_2d
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v0

    .line 5125
    :sswitch_30
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v0

    .line 5123
    :sswitch_33
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v0

    .line 5121
    :sswitch_36
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v0

    .line 5119
    :sswitch_39
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v0

    .line 5117
    :sswitch_3c
    iget v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v0

    .line 5156
    .restart local v0    # "bits":J
    .restart local v2    # "axisBit":J
    :cond_3f
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 5157
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    .line 5149
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_3c
        0x1 -> :sswitch_39
        0x2 -> :sswitch_36
        0x3 -> :sswitch_33
        0x4 -> :sswitch_30
        0x5 -> :sswitch_2d
        0x6 -> :sswitch_2a
        0x7 -> :sswitch_27
        0x8 -> :sswitch_24
        0x1b -> :sswitch_21
        0x1c -> :sswitch_1e
        0x37 -> :sswitch_1b
        0x38 -> :sswitch_18
    .end sparse-switch
.end method

.method public setAxisValue(IF)V
    .registers 13
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .line 5172
    sparse-switch p1, :sswitch_data_8a

    goto :goto_30

    .line 5214
    :sswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    goto :goto_30

    .line 5208
    :sswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 5209
    goto/16 :goto_80

    .line 5204
    :sswitch_b
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeY:F

    .line 5205
    goto/16 :goto_80

    .line 5201
    :sswitch_f
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->relativeX:F

    .line 5202
    goto/16 :goto_80

    .line 5198
    :sswitch_13
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 5199
    goto/16 :goto_80

    .line 5195
    :sswitch_17
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 5196
    goto/16 :goto_80

    .line 5192
    :sswitch_1b
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 5193
    goto :goto_80

    .line 5189
    :sswitch_1e
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 5190
    goto :goto_80

    .line 5186
    :sswitch_21
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 5187
    goto :goto_80

    .line 5183
    :sswitch_24
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 5184
    goto :goto_80

    .line 5180
    :sswitch_27
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 5181
    goto :goto_80

    .line 5177
    :sswitch_2a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 5178
    goto :goto_80

    .line 5174
    :sswitch_2d
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 5175
    goto :goto_80

    .line 5217
    :goto_30
    if-ltz p1, :cond_81

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_81

    .line 5220
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 5221
    .local v0, "bits":J
    const-wide/high16 v2, -0x8000000000000000L

    ushr-long/2addr v2, p1

    .line 5222
    .local v2, "axisBit":J
    const-wide/16 v4, -0x1

    ushr-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 5223
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 5224
    .local v5, "values":[F
    and-long v6, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7e

    .line 5225
    if-nez v5, :cond_57

    .line 5226
    const/16 v6, 0x8

    new-array v5, v6, [F

    .line 5227
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_7a

    .line 5229
    :cond_57
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    .line 5230
    .local v6, "count":I
    array-length v7, v5

    if-ge v6, v7, :cond_68

    .line 5231
    if-eq v4, v6, :cond_7a

    .line 5232
    add-int/lit8 v7, v4, 0x1

    sub-int v8, v6, v4

    invoke-static {v5, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7a

    .line 5236
    :cond_68
    mul-int/lit8 v7, v6, 0x2

    new-array v7, v7, [F

    .line 5237
    .local v7, "newValues":[F
    const/4 v8, 0x0

    invoke-static {v5, v8, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5238
    add-int/lit8 v8, v4, 0x1

    sub-int v9, v6, v4

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5240
    move-object v5, v7

    .line 5241
    iput-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 5244
    .end local v6    # "count":I
    .end local v7    # "newValues":[F
    :cond_7a
    :goto_7a
    or-long v6, v0, v2

    iput-wide v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 5246
    :cond_7e
    aput p2, v5, v4

    .line 5249
    .end local v0    # "bits":J
    .end local v2    # "axisBit":J
    .end local v4    # "index":I
    .end local v5    # "values":[F
    :goto_80
    return-void

    .line 5218
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Axis out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_2d
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_27
        0x3 -> :sswitch_24
        0x4 -> :sswitch_21
        0x5 -> :sswitch_1e
        0x6 -> :sswitch_1b
        0x7 -> :sswitch_17
        0x8 -> :sswitch_13
        0x1b -> :sswitch_f
        0x1c -> :sswitch_b
        0x37 -> :sswitch_7
        0x38 -> :sswitch_4
    .end sparse-switch
.end method
