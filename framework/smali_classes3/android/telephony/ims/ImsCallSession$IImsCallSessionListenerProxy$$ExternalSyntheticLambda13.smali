.class public final synthetic Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    iput-object p2, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda13;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->$r8$lambda$dPoVRaWypEpZKCBF1O9oOWkakwU(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Ljava/util/List;)V

    return-void
.end method
