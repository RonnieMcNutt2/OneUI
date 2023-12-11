.class public final synthetic Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->binderDied()V

    return-void
.end method
