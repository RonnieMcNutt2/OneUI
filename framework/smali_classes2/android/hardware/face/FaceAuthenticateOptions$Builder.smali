.class public Landroid/hardware/face/FaceAuthenticateOptions$Builder;
.super Ljava/lang/Object;
.source "FaceAuthenticateOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceAuthenticateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttributionTag:Ljava/lang/String;

.field private mAuthenticateReason:I

.field private mBuilderFieldsSet:J

.field private mDisplayState:I

.field private mOpPackageName:Ljava/lang/String;

.field private mSensorId:I

.field private mUserId:I

.field private mWakeReason:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 488
    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    .line 614
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 618
    return-void

    .line 615
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 10

    .line 578
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 579
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 581
    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 582
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultUserId()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mUserId:I

    .line 584
    :cond_19
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 585
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultSensorId()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mSensorId:I

    .line 587
    :cond_28
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    .line 588
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultDisplayState()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mDisplayState:I

    .line 590
    :cond_37
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    .line 591
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultAuthenticateReason()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAuthenticateReason:I

    .line 593
    :cond_46
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_55

    .line 594
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultWakeReason()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mWakeReason:I

    .line 596
    :cond_55
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_64

    .line 597
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    .line 599
    :cond_64
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_73

    .line 600
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    .line 602
    :cond_73
    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions;

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mUserId:I

    iget v3, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mSensorId:I

    iget v4, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mDisplayState:I

    iget v5, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAuthenticateReason:I

    iget v6, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mWakeReason:I

    iget-object v7, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/hardware/face/FaceAuthenticateOptions;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 610
    .local v0, "o":Landroid/hardware/face/FaceAuthenticateOptions;
    return-object v0
.end method

.method public setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 570
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 571
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 572
    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    .line 573
    return-object p0
.end method

.method public setAuthenticateReason(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 532
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 533
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 534
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAuthenticateReason:I

    .line 535
    return-object p0
.end method

.method public setDisplayState(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 517
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 518
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 519
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mDisplayState:I

    .line 520
    return-object p0
.end method

.method public setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 557
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 558
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 559
    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    .line 560
    return-object p0
.end method

.method public setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 506
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 507
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 508
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mSensorId:I

    .line 509
    return-object p0
.end method

.method public setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 495
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 496
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 497
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mUserId:I

    .line 498
    return-object p0
.end method

.method public setWakeReason(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 543
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 544
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 545
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mWakeReason:I

    .line 546
    return-object p0
.end method
