.class public final synthetic Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/telephony/IIntegerConsumer;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/satellite/stub/SatelliteImplBase$1;ZILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    iput-boolean p2, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda3;->f$1:Z

    iput p3, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda3;->f$3:Lcom/android/internal/telephony/IIntegerConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/satellite/stub/SatelliteImplBase$1;

    iget-boolean v1, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda3;->f$1:Z

    iget v2, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Landroid/telephony/satellite/stub/SatelliteImplBase$1$$ExternalSyntheticLambda3;->f$3:Lcom/android/internal/telephony/IIntegerConsumer;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/satellite/stub/SatelliteImplBase$1;->$r8$lambda$jZh3yinrxVGCtEbeLc-flzET9so(Landroid/telephony/satellite/stub/SatelliteImplBase$1;ZILcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method
