.class Landroid/telephony/ims/RcsUceAdapter$2;
.super Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/RcsUceAdapter;->requestAvailability(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/RcsUceAdapter;

.field final synthetic val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/ims/RcsUceAdapter;

    .line 713
    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$2;->this$0:Landroid/telephony/ims/RcsUceAdapter;

    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCapabilitiesReceived$0(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V
    .registers 2
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "contactCapabilities"    # Ljava/util/List;

    .line 718
    invoke-interface {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onCapabilitiesReceived(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onComplete$1(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Landroid/telephony/ims/SipDetails;)V
    .registers 2
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 727
    invoke-interface {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onComplete(Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method static synthetic lambda$onError$2(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJLandroid/telephony/ims/SipDetails;)V
    .registers 5
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMilliseconds"    # J
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 737
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onError(IJLandroid/telephony/ims/SipDetails;)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesReceived(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 716
    .local p1, "contactCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 718
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 720
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 721
    nop

    .line 722
    return-void

    .line 720
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 721
    throw v2
.end method

.method public onComplete(Landroid/telephony/ims/SipDetails;)V
    .registers 7
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 727
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Landroid/telephony/ims/SipDetails;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 729
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 730
    nop

    .line 731
    return-void

    .line 729
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 730
    throw v2
.end method

.method public onError(IJLandroid/telephony/ims/SipDetails;)V
    .registers 15
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMilliseconds"    # J
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 737
    .local v0, "callingIdentity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v9, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;

    move-object v3, v9

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJLandroid/telephony/ims/SipDetails;)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 739
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 740
    nop

    .line 741
    return-void

    .line 739
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 740
    throw v2
.end method
