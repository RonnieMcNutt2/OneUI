.class public final synthetic Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;ILandroid/content/ContentResolver;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    iput p2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;->f$2:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController$$ExternalSyntheticLambda0;->f$2:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->$r8$lambda$zwbL2CW1tK7-2PLLRVca6n82clI(Lcom/android/internal/accessibility/AccessibilityDirectAccessController;ILandroid/content/ContentResolver;)V

    return-void
.end method
