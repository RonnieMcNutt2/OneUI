.class public final synthetic Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->$r8$lambda$kuN5J8GYIlo2HFps9FQX7yDXDV0(Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
