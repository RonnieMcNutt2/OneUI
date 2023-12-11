.class public final Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
.super Ljava/lang/Object;
.source "DomainSelectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService$SelectionAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mCause:I

.field private mEmergencyRegResult:Landroid/telephony/EmergencyRegResult;

.field private mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mIsEmergency:Z

.field private mIsExitedFromAirplaneMode:Z

.field private mIsVideoCall:Z

.field private mNumber:Ljava/lang/String;

.field private final mSelectorType:I

.field private final mSlotId:I

.field private final mSubId:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "subId"    # I
    .param p3, "selectorType"    # I

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSlotId:I

    .line 392
    iput p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSubId:I

    .line 393
    iput p3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSelectorType:I

    .line 394
    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/DomainSelectionService$SelectionAttributes;
    .registers 15

    .line 504
    new-instance v13, Landroid/telephony/DomainSelectionService$SelectionAttributes;

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSlotId:I

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSubId:I

    iget-object v3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCallId:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mNumber:Ljava/lang/String;

    iget v5, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mSelectorType:I

    iget-boolean v6, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsVideoCall:Z

    iget-boolean v7, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsEmergency:Z

    iget-boolean v8, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsExitedFromAirplaneMode:Z

    iget-object v9, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iget v10, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCause:I

    iget-object v11, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mEmergencyRegResult:Landroid/telephony/EmergencyRegResult;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/telephony/DomainSelectionService$SelectionAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;IZZZLandroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/EmergencyRegResult;Landroid/telephony/DomainSelectionService$SelectionAttributes-IA;)V

    return-object v13
.end method

.method public setCallId(Ljava/lang/String;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 403
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCallId:Ljava/lang/String;

    .line 404
    return-object p0
.end method

.method public setCsDisconnectCause(I)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "cause"    # I

    .line 484
    iput p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mCause:I

    .line 485
    return-object p0
.end method

.method public setEmergency(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "emergency"    # Z

    .line 436
    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsEmergency:Z

    .line 437
    return-object p0
.end method

.method public setEmergencyRegResult(Landroid/telephony/EmergencyRegResult;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "regResult"    # Landroid/telephony/EmergencyRegResult;

    .line 495
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mEmergencyRegResult:Landroid/telephony/EmergencyRegResult;

    .line 496
    return-object p0
.end method

.method public setExitedFromAirplaneMode(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "exited"    # Z

    .line 448
    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsExitedFromAirplaneMode:Z

    .line 449
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 414
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mNumber:Ljava/lang/String;

    .line 415
    return-object p0
.end method

.method public setPsDisconnectCause(Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 473
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 474
    return-object p0
.end method

.method public setVideoCall(Z)Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    .registers 2
    .param p1, "video"    # Z

    .line 425
    iput-boolean p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;->mIsVideoCall:Z

    .line 426
    return-object p0
.end method
