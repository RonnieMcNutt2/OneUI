.class public final synthetic Landroid/view/Display$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/Display$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/view/Display$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    check-cast p1, Landroid/view/Display$Mode;

    invoke-static {v0, p1}, Landroid/view/Display;->lambda$getSupportedModes$6(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)Z

    move-result p1

    return p1
.end method
