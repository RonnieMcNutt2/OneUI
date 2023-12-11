.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;ZLjava/util/function/BiConsumer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    iput-boolean p2, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    iget-boolean v1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, v2}, Landroid/view/translation/UiTranslationController;->lambda$runForEachView$7(Landroid/util/ArrayMap;ZLjava/util/function/BiConsumer;)V

    return-void
.end method
