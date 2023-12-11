.class public final synthetic Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/SipDialogStateCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/SipDialogStateCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/SipDialogStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/SipDialogStateCallback;

    invoke-virtual {v0}, Landroid/telephony/ims/SipDialogStateCallback;->binderDied()V

    return-void
.end method
