.class public final Landroid/location/LocationRequest$Builder;
.super Ljava/lang/Object;
.source "LocationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdasGnssBypass:Z

.field private mBypass:Z

.field private mDurationMillis:J

.field private mHiddenFromAppOps:Z

.field private mIntervalMillis:J

.field private mLowPower:Z

.field private mMaxUpdateDelayMillis:J

.field private mMaxUpdates:I

.field private mMinUpdateDistanceMeters:F

.field private mMinUpdateIntervalMillis:J

.field private mQuality:I

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(J)V
    .registers 5
    .param p1, "intervalMillis"    # J

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest$Builder;->setIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 935
    const/16 v0, 0x66

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 936
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    .line 937
    const v0, 0x7fffffff

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    .line 938
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 939
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    .line 940
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    .line 941
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    .line 942
    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    .line 943
    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    .line 944
    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 946
    return-void
.end method

.method public constructor <init>(Landroid/location/LocationRequest;)V
    .registers 6
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmIntervalMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    .line 953
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmQuality(Landroid/location/LocationRequest;)I

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 954
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmDurationMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    .line 955
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMaxUpdates(Landroid/location/LocationRequest;)I

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    .line 956
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMinUpdateIntervalMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 957
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMinUpdateDistanceMeters(Landroid/location/LocationRequest;)F

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    .line 958
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMaxUpdateDelayMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    .line 959
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmHideFromAppOps(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    .line 960
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmAdasGnssBypass(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    .line 961
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmBypass(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    .line 962
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmLowPower(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    .line 963
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmWorkSource(Landroid/location/LocationRequest;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 967
    iget-wide v0, p0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    iget-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    .line 972
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 974
    :cond_63
    return-void
.end method


# virtual methods
.method public build()Landroid/location/LocationRequest;
    .registers 27

    .line 1213
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    iget-wide v1, v0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    const-string v2, "passive location requests must have an explicit minimum update interval"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1217
    new-instance v1, Landroid/location/LocationRequest;

    move-object v3, v1

    const/4 v4, 0x0

    iget-wide v13, v0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    move-wide v5, v13

    iget v7, v0, Landroid/location/LocationRequest$Builder;->mQuality:I

    const-wide v8, 0x7fffffffffffffffL

    iget-wide v10, v0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    iget v12, v0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    move-wide/from16 v24, v5

    iget-wide v4, v0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 1224
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    iget v15, v0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    iget-wide v4, v0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    move-wide/from16 v16, v4

    iget-boolean v4, v0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    move/from16 v18, v4

    iget-boolean v4, v0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    move/from16 v19, v4

    iget-boolean v4, v0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    move/from16 v20, v4

    iget-boolean v4, v0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    move/from16 v21, v4

    new-instance v4, Landroid/os/WorkSource;

    move-object/from16 v22, v4

    iget-object v5, v0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {v4, v5}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    const/16 v23, 0x0

    move-wide/from16 v5, v24

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v23}, Landroid/location/LocationRequest;-><init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;Landroid/location/LocationRequest-IA;)V

    .line 1217
    return-object v1
.end method

.method public clearMinUpdateIntervalMillis()Landroid/location/LocationRequest$Builder;
    .registers 3

    .line 1080
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 1081
    return-object p0
.end method

.method public setAdasGnssBypass(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "adasGnssBypass"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1143
    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    .line 1144
    return-object p0
.end method

.method public setDurationMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10
    .param p1, "durationMillis"    # J

    .line 1034
    const-wide/16 v2, 0x1

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "durationMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    .line 1036
    return-object p0
.end method

.method public setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "hiddenFromAppOps"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1123
    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    .line 1124
    return-object p0
.end method

.method public setIntervalMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10
    .param p1, "intervalMillis"    # J

    .line 987
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    .line 989
    return-object p0
.end method

.method public setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "locationSettingsIgnored"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1161
    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    .line 1162
    return-object p0
.end method

.method public setLowPower(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "lowPower"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1179
    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    .line 1180
    return-object p0
.end method

.method public setMaxUpdateDelayMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10
    .param p1, "maxUpdateDelayMillis"    # J

    .line 1105
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "maxUpdateDelayMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    .line 1107
    return-object p0
.end method

.method public setMaxUpdates(I)Landroid/location/LocationRequest$Builder;
    .registers 5
    .param p1, "maxUpdates"    # I

    .line 1046
    const v0, 0x7fffffff

    const-string v1, "maxUpdates"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    .line 1048
    return-object p0
.end method

.method public setMinUpdateDistanceMeters(F)Landroid/location/LocationRequest$Builder;
    .registers 5
    .param p1, "minUpdateDistanceMeters"    # F

    .line 1092
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "minUpdateDistanceMeters"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    .line 1094
    return-object p0
.end method

.method public setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10
    .param p1, "minUpdateIntervalMillis"    # J

    .line 1069
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "minUpdateIntervalMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 1071
    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest$Builder;
    .registers 5
    .param p1, "quality"    # I

    .line 999
    const/16 v0, 0x68

    if-eq p1, v0, :cond_f

    const/16 v0, 0x66

    if-eq p1, v0, :cond_f

    const/16 v0, 0x64

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 1002
    :goto_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 999
    const-string v2, "quality must be a defined QUALITY constant, not %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    iput p1, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 1004
    return-object p0
.end method

.method public setQuality(Landroid/location/Criteria;)Landroid/location/LocationRequest$Builder;
    .registers 4
    .param p1, "criteria"    # Landroid/location/Criteria;

    .line 1011
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 1019
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1020
    const/16 v0, 0xcb

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    goto :goto_21

    .line 1013
    :pswitch_13
    const/16 v0, 0x66

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 1014
    goto :goto_21

    .line 1016
    :pswitch_18
    const/16 v0, 0x64

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 1017
    goto :goto_21

    .line 1022
    :cond_1d
    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 1026
    :goto_21
    return-object p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_13
    .end packed-switch
.end method

.method public setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1196
    iput-object p1, p0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 1197
    return-object p0
.end method
