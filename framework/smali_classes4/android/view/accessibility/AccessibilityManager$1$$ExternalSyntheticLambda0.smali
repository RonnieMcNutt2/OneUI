.class public final synthetic Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/accessibility/AccessibilityManager$1;

.field public final synthetic f$1:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/accessibility/AccessibilityManager$1;

    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/accessibility/AccessibilityManager$1;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityManager$1;->$r8$lambda$Eqsb-jBp1OuleXVTqLPnQUqLoS4(Landroid/view/accessibility/AccessibilityManager$1;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    return-void
.end method
