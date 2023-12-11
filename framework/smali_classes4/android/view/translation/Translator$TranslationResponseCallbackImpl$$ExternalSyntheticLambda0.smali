.class public final synthetic Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

.field public final synthetic f$1:Landroid/view/translation/TranslationResponse;


# direct methods
.method public synthetic constructor <init>(Landroid/view/translation/Translator$TranslationResponseCallbackImpl;Landroid/view/translation/TranslationResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    iput-object p2, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/translation/TranslationResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;->f$0:Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    iget-object v1, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;->f$1:Landroid/view/translation/TranslationResponse;

    invoke-static {v0, v1}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->$r8$lambda$k-IBWo2sdmcz_fDv8ZHkohvYVUY(Landroid/view/translation/Translator$TranslationResponseCallbackImpl;Landroid/view/translation/TranslationResponse;)V

    return-void
.end method
