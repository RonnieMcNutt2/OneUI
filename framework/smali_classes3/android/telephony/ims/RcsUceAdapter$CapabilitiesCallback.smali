.class public interface abstract Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
.super Ljava/lang/Object;
.source "RcsUceAdapter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsUceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CapabilitiesCallback"
.end annotation


# virtual methods
.method public abstract onCapabilitiesReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation
.end method

.method public onComplete()V
    .registers 1

    .line 491
    return-void
.end method

.method public onComplete(Landroid/telephony/ims/SipDetails;)V
    .registers 2
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 522
    invoke-interface {p0}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onComplete()V

    .line 523
    return-void
.end method

.method public onError(IJ)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "retryIntervalMillis"    # J

    .line 505
    return-void
.end method

.method public onError(IJLandroid/telephony/ims/SipDetails;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "retryIntervalMillis"    # J
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 541
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onError(IJ)V

    .line 542
    return-void
.end method
