.class public final synthetic Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

.field public final synthetic f$1:Lcom/android/internal/telephony/IIntegerConsumer;

.field public final synthetic f$2:Lcom/android/internal/telephony/IIntegerConsumer;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/satellite/stub/SatelliteImplBase$1;Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda13;->f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    iput-object p2, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda13;->f$1:Lcom/android/internal/telephony/IIntegerConsumer;

    iput-object p3, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda13;->f$2:Lcom/android/internal/telephony/IIntegerConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda13;->f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    iget-object v1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda13;->f$1:Lcom/android/internal/telephony/IIntegerConsumer;

    iget-object v2, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda13;->f$2:Lcom/android/internal/telephony/IIntegerConsumer;

    invoke-static {v0, v1, v2}, Landroid/telephony/satellite/stub/SatelliteImplBase$1;->$r8$lambda$gGzsfSyWcU3HtW9IUB6eg0hR_U8(Landroid/telephony/satellite/stub/SatelliteImplBase$1;Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method
