.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

.field public final synthetic f$1:Landroid/telephony/ims/feature/ConnectionFailureInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    iput-object p2, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/feature/ConnectionFailureInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/feature/ConnectionFailureInfo;

    invoke-static {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->lambda$onError$2(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/ConnectionFailureInfo;)V

    return-void
.end method
