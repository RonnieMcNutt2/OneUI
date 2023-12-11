.class public final synthetic Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;

    invoke-static {v0, p1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->lambda$performTtsPrompt$3(Lcom/android/internal/accessibility/AccessibilityDirectAccessController$TtsPrompt;Landroid/content/DialogInterface;)V

    return-void
.end method
