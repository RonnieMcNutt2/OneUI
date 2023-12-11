.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 8872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8898
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8899
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .registers 22
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    .line 8924
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    const/4 v7, 0x0

    const/high16 v8, 0x43160000    # 150.0f

    const-wide/16 v9, 0x0

    const-string v11, "ViewRootImpl"

    const/high16 v12, 0x3f800000    # 1.0f

    if-lez v6, :cond_45

    .line 8925
    mul-float v6, v1, v8

    float-to-long v13, v6

    .line 8926
    .local v13, "normTime":J
    iget v6, v0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v6, :cond_41

    .line 8927
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRACKBALL()Z

    move-result v6

    if-eqz v6, :cond_39

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " reversed to positive!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8928
    :cond_39
    iput v5, v0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8929
    iput v7, v0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8930
    iput v12, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8931
    iput-wide v9, v0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8933
    :cond_41
    const/4 v5, 0x1

    iput v5, v0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_7a

    .line 8934
    .end local v13    # "normTime":J
    :cond_45
    cmpg-float v6, v1, v5

    if-gez v6, :cond_78

    .line 8935
    neg-float v6, v1

    mul-float/2addr v6, v8

    float-to-long v13, v6

    .line 8936
    .restart local v13    # "normTime":J
    iget v6, v0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v6, :cond_74

    .line 8937
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRACKBALL()Z

    move-result v6

    if-eqz v6, :cond_6c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " reversed to negative!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8938
    :cond_6c
    iput v5, v0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8939
    iput v7, v0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8940
    iput v12, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8941
    iput-wide v9, v0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8943
    :cond_74
    const/4 v5, -0x1

    iput v5, v0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_7a

    .line 8945
    .end local v13    # "normTime":J
    :cond_78
    const-wide/16 v13, 0x0

    .line 8951
    .restart local v13    # "normTime":J
    :goto_7a
    cmp-long v5, v13, v9

    if-lez v5, :cond_142

    .line 8952
    iget-wide v5, v0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v5, v2, v5

    .line 8953
    .local v5, "delta":J
    iput-wide v2, v0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8954
    iget v7, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8955
    .local v7, "acc":F
    cmp-long v8, v5, v13

    const-string v9, " acc="

    const-string v10, " scale="

    const-string v15, " delta="

    const-string v12, " normTime="

    const v16, 0x3ccccccd    # 0.025f

    if-gez v8, :cond_eb

    .line 8957
    sub-long v2, v13, v5

    long-to-float v2, v2

    mul-float v2, v2, v16

    .line 8958
    .local v2, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_a1

    mul-float/2addr v7, v2

    .line 8959
    :cond_a1
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRACKBALL()Z

    move-result v3

    if-eqz v3, :cond_e1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " accelerate: off="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8962
    :cond_e1
    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v8, v7, v3

    if-gez v8, :cond_e8

    move v3, v7

    :cond_e8
    iput v3, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8963
    .end local v2    # "scale":F
    goto :goto_142

    .line 8965
    :cond_eb
    sub-long v2, v5, v13

    long-to-float v2, v2

    mul-float v2, v2, v16

    .line 8966
    .restart local v2    # "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v8, v2, v3

    if-lez v8, :cond_f7

    div-float/2addr v7, v2

    .line 8967
    :cond_f7
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_TRACKBALL()Z

    move-result v3

    if-eqz v3, :cond_137

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " deccelerate: off="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8970
    :cond_137
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v8, v7, v3

    if-lez v8, :cond_13f

    move v12, v7

    goto :goto_140

    :cond_13f
    move v12, v3

    :goto_140
    iput v12, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8973
    .end local v2    # "scale":F
    .end local v5    # "delta":J
    .end local v7    # "acc":F
    :cond_142
    :goto_142
    iget v2, v0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8974
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    return v2
.end method

.method generate()I
    .registers 6

    .line 8986
    const/4 v0, 0x0

    .line 8987
    .local v0, "movement":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 8989
    :goto_4
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_e

    move v2, v3

    goto :goto_f

    :cond_e
    const/4 v2, -0x1

    .line 8990
    .local v2, "dir":I
    :goto_f
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v4, :pswitch_data_6a

    .line 9022
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4f

    .line 9023
    return v0

    .line 9006
    :pswitch_1f
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2a

    .line 9007
    return v0

    .line 9009
    :cond_2a
    add-int/2addr v0, v2

    .line 9010
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 9011
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v2

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 9012
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 9013
    goto :goto_69

    .line 8995
    :pswitch_3b
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_46

    .line 8996
    return v0

    .line 8998
    :cond_46
    add-int/2addr v0, v2

    .line 8999
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 9000
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 9001
    goto :goto_69

    .line 9025
    :cond_4f
    add-int/2addr v0, v2

    .line 9026
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v2

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 9027
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 9028
    .local v1, "acc":F
    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v3

    .line 9029
    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_65

    move v3, v1

    goto :goto_67

    :cond_65
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    :goto_67
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 9032
    .end local v1    # "acc":F
    .end local v2    # "dir":I
    :goto_69
    goto :goto_4

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method

.method reset(I)V
    .registers 4
    .param p1, "_step"    # I

    .line 8905
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 8906
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8907
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 8908
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 8909
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 8910
    return-void
.end method
