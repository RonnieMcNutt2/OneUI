.class public final synthetic Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# instance fields
.field public final synthetic f$0:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-static {v0, p1}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->$r8$lambda$k7WkLCKFvRAQPI1B3l6rtWkwqbI(Landroid/inputmethodservice/InputMethodService$InputMethodImpl;Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method
