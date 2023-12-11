.class public abstract Landroid/service/voice/VoiceInteractionManagerInternal;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
.end method

.method public abstract getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract hasActiveSession(Ljava/lang/String;)Z
.end method

.method public abstract onPreCreatedUserConversion(I)V
.end method

.method public abstract startLocalVoiceInteraction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract stopLocalVoiceInteraction(Landroid/os/IBinder;)V
.end method

.method public abstract supportsLocalVoiceInteraction()Z
.end method
