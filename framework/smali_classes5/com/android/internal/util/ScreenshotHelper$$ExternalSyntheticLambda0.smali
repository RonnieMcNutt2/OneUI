.class public final synthetic Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/ScreenshotHelper;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/ScreenshotHelper;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/ScreenshotHelper;

    iput-object p2, p0, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/ScreenshotHelper;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/android/internal/util/ScreenshotHelper;->$r8$lambda$ZL03SD6r3BTbbv6bEkLU0KKykyI(Lcom/android/internal/util/ScreenshotHelper;Ljava/util/function/Consumer;)V

    return-void
.end method
