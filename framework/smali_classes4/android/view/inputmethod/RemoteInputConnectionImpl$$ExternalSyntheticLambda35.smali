.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

.field public final synthetic f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic f$2:Landroid/os/CancellationSignal;

.field public final synthetic f$3:Landroid/view/inputmethod/PreviewableHandwritingGesture;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iput-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;->f$2:Landroid/os/CancellationSignal;

    iput-object p4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;->f$3:Landroid/view/inputmethod/PreviewableHandwritingGesture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;->f$2:Landroid/os/CancellationSignal;

    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;->f$3:Landroid/view/inputmethod/PreviewableHandwritingGesture;

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->$r8$lambda$7XWC8yznhknmY4rkYQEdP-0K1qY(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V

    return-void
.end method
