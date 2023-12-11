.class public final Landroid/telephony/ThermalMitigationRequest$Builder;
.super Ljava/lang/Object;
.source "ThermalMitigationRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ThermalMitigationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

.field private mThermalMitigationAction:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mThermalMitigationAction:I

    .line 186
    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/ThermalMitigationRequest;
    .registers 5

    .line 227
    iget v0, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mThermalMitigationAction:I

    if-ltz v0, :cond_2a

    .line 232
    if-nez v0, :cond_13

    .line 233
    iget-object v0, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    if-eqz v0, :cond_b

    goto :goto_17

    .line 234
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataThrottlingRequest  cannot be null for THERMAL_MITIGATION_ACTION_DATA_THROTTLING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_13
    iget-object v0, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    if-nez v0, :cond_22

    .line 245
    :goto_17
    new-instance v0, Landroid/telephony/ThermalMitigationRequest;

    iget v1, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mThermalMitigationAction:I

    iget-object v2, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ThermalMitigationRequest;-><init>(ILandroid/telephony/DataThrottlingRequest;Landroid/telephony/ThermalMitigationRequest-IA;)V

    return-object v0

    .line 240
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataThrottlingRequest must be null for THERMAL_MITIGATION_ACTION_VOICE_ONLY and THERMAL_MITIGATION_ACTION_RADIO_OFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "thermalMitigationAction was  not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataThrottlingRequest(Landroid/telephony/DataThrottlingRequest;)Landroid/telephony/ThermalMitigationRequest$Builder;
    .registers 2
    .param p1, "dataThrottlingRequest"    # Landroid/telephony/DataThrottlingRequest;

    .line 217
    iput-object p1, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mDataThrottlingRequest:Landroid/telephony/DataThrottlingRequest;

    .line 218
    return-object p0
.end method

.method public setThermalMitigationAction(I)Landroid/telephony/ThermalMitigationRequest$Builder;
    .registers 2
    .param p1, "thermalMitigationAction"    # I

    .line 200
    iput p1, p0, Landroid/telephony/ThermalMitigationRequest$Builder;->mThermalMitigationAction:I

    .line 201
    return-object p0
.end method
