.class public final synthetic Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroid/telephony/ims/SipDetails;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJLandroid/telephony/ims/SipDetails;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iput p2, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;->f$1:I

    iput-wide p3, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;->f$2:J

    iput-object p5, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;->f$3:Landroid/telephony/ims/SipDetails;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iget v1, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v2, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;->f$2:J

    iget-object v4, p0, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;->f$3:Landroid/telephony/ims/SipDetails;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/ims/RcsUceAdapter$2;->lambda$onError$2(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJLandroid/telephony/ims/SipDetails;)V

    return-void
.end method
