.class public final synthetic Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

.field public final synthetic f$1:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Lcom/android/ims/internal/IImsCallSession;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;->f$1:Lcom/android/ims/internal/IImsCallSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;->f$1:Lcom/android/ims/internal/IImsCallSession;

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->$r8$lambda$fstlpKFdz2xFq0p43Bsjz0YOvtE(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Lcom/android/ims/internal/IImsCallSession;)V

    return-void
.end method
