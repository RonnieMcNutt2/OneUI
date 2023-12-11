.class public final synthetic Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/IInputMethodSessionInvoker;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iput-boolean p2, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$0:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-boolean v1, p0, Landroid/view/inputmethod/IInputMethodSessionInvoker$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->$r8$lambda$qVXDtauPljyL7xMa8QfX96D2j5U(Landroid/view/inputmethod/IInputMethodSessionInvoker;Z)V

    return-void
.end method
