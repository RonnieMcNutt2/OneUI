.class public final synthetic Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

.field public final synthetic f$1:Landroid/telephony/ims/ImsStreamMediaProfile;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    iput-object p2, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;->f$1:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda7;->f$1:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->$r8$lambda$o42msD7qjrop4RD6Q-4DFRk2_qg(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method
