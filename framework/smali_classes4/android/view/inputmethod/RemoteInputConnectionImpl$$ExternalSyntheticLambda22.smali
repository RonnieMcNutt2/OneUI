.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic f$2:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iput-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;->f$2:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;->f$2:Landroid/view/KeyEvent;

    invoke-static {v0, v1, v2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->$r8$lambda$fobB0uVzppec43-lQ6kxI6jWxzw(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method
