.class public interface abstract Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceWrapper.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarrierMessagingCallback"
.end annotation


# virtual methods
.method public onDownloadMmsComplete(I)V
    .registers 2
    .param p1, "result"    # I

    .line 386
    return-void
.end method

.method public onReceiveSmsComplete(I)V
    .registers 2
    .param p1, "result"    # I

    .line 334
    return-void
.end method

.method public onSendMmsComplete(I[B)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    .line 375
    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    .line 361
    return-void
.end method

.method public onSendSmsComplete(II)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    .line 347
    return-void
.end method
