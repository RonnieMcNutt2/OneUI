.class public final synthetic Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/ims/internal/IImsFeatureStatusCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsService$1;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda15;->f$0:Landroid/telephony/ims/ImsService$1;

    iput p2, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda15;->f$1:I

    iput p3, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda15;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda15;->f$3:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda15;->f$0:Landroid/telephony/ims/ImsService$1;

    iget v1, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda15;->f$1:I

    iget v2, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda15;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/ImsService$1$$ExternalSyntheticLambda15;->f$3:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/ims/ImsService$1;->$r8$lambda$EBikr_dkCUf2YBDhTpwr-1w4cxg(Landroid/telephony/ims/ImsService$1;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method
