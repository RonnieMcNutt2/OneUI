.class public final synthetic Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

.field public final synthetic f$1:Landroid/telephony/ims/SipDelegateImsConfiguration;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/SipDelegateImsConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/SipDelegateImsConfiguration;

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->$r8$lambda$2mGArBsSVzMq8NpDFWrkMBQXWnI(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    return-void
.end method
