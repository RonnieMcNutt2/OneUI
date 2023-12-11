.class public final synthetic Landroid/view/Display$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;

.field public final synthetic f$1:Landroid/view/Display$Mode;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    iput-object p2, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$1:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    iget-object v1, p0, Landroid/view/Display$$ExternalSyntheticLambda0;->f$1:Landroid/view/Display$Mode;

    check-cast p1, Landroid/view/Display$Mode;

    invoke-static {v0, v1, p1}, Landroid/view/Display;->lambda$getSupportedModes$0(Lcom/samsung/android/hardware/display/RefreshRateConfig;Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result p1

    return p1
.end method
