.class public final synthetic Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

.field public final synthetic f$1:Landroid/telephony/ims/ImsStreamMediaProfile;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;->f$1:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;->f$1:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->$r8$lambda$vq1Lg0a2PCwkwerqcwe1Plb7Owc(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method
