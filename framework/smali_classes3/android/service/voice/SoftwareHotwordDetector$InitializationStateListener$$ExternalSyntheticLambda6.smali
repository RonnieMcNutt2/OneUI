.class public final synthetic Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;

.field public final synthetic f$1:Landroid/service/voice/HotwordDetectionServiceFailure;


# direct methods
.method public synthetic constructor <init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda6;->f$0:Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;

    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda6;->f$1:Landroid/service/voice/HotwordDetectionServiceFailure;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda6;->f$0:Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;

    iget-object v1, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda6;->f$1:Landroid/service/voice/HotwordDetectionServiceFailure;

    invoke-static {v0, v1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->$r8$lambda$Ib5K77L_iKCEUHEJxl2QG8tSwpk(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method
